import 'dart:developer';
import 'dart:js';

import 'package:react/react_client.dart';
import 'package:react/react_client/js_backed_map.dart';
import 'package:react/react_client/react_interop.dart';

extension DeepConvert<T extends JsBackedMap> on T {
  bool _isJsMap(dynamic value) => value is JsMap && value is! Function;

  /// Traverses the provided [jsMap] and recursively
  /// converts any nested [JsMap]s to [JsBackedMap]s.
  ///
  /// Inverse of [deepJsObject].
  T deepConvertFromJs<T extends JsBackedMap>(JsMap jsMap) {
    JsBackedMap _createJsBackedMap(JsMap nestedJsMap) {
      final map = JsBackedMap.fromJs(nestedJsMap);
      map.forEach((key, value) {
        if (_isJsMap(value)) {
          map[key] = _createJsBackedMap(value);
        }
      });

      return map;
    }

    return _createJsBackedMap(jsMap);
  }

  /// Traverses the [jsObject] of the current instance and recursively
  /// converts any nested [Map]s to [JsMap]s.
  ///
  /// Inverse of [deepConvertFromJs].
  JsMap get deepJsObject {
    JsMap _createJsMap(Map nestedDartMap) {
      final jsBackedMap = JsBackedMap.from(nestedDartMap);
      jsBackedMap.forEach((key, value) {
        if (value is Map) {
          jsBackedMap[key] = _createJsMap(value);
        }
      });

      return jsBackedMap.jsObject;
    }

    return _createJsMap(JsBackedMap.fromJs(jsObject));
  }
}

/// Shorthand convenience function to wrap a JS component that utilizes `forwardRef`.
ReactJsComponentFactoryProxy forwardRefToJsComponent(ReactClass jsComponent, {refPropKey = 'ref'}) {
  return forwardRef((props, ref) {
    final _ref = refPropKey == 'ref' ? ref : ref?.jsRef;
    return ReactJsComponentFactoryProxy(jsComponent)({...props, 'ref': _ref}, props['children']);
  });
}
