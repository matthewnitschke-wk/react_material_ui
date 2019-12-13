library react_material_ui.src.hocs.with_styles;

import 'dart:developer';

import 'package:js/js.dart';
import 'package:js/js_util.dart';
import 'package:react/react_client.dart';
import 'package:react/react_client/js_backed_map.dart';
import 'package:react/react_client/react_interop.dart';

import 'package:react_material_ui/src/js_interop.dart';
//import 'package:react_material_ui/src/theme.dart';
import 'package:react_material_ui/src/util/js_util.dart';
import 'package:react_material_ui/src/util/typedefs.dart';
import 'package:react_material_ui/theming.dart';

/// <https://material-ui.com/styles/advanced/#withstyles>
///
/// Example:
///
/// ```
/// final StyledBox = withStyles({
///   'root': {
///     'opacity': 0,
///   },
/// })((props, [options]) {
///   return Box({'className': props['classes']['root']}, props['children']);
/// });
/// ```
PropInjector withStyles(/*Map|Function*/dynamic styles, {Map options = const {}}) {
  options = Map.of(options);
  options['name'] ??= 'Anonymous';

  return (getComponent) {
    if (styles is! Function && styles is! Map) {
      throw ArgumentError.value(styles, 'styles', 'styles must be a Map, or a function that returns a Map.');
    }

    final wrappedComponent = allowInterop((JsMap injectedJsProps, [JsMap injectedJsOptions]) {
      return getComponent(
        JsBackedMap().deepConvertFromJs(injectedJsProps),
        JsBackedMap().deepConvertFromJs(injectedJsOptions),
      );
    });

    try {
      // Build the wrapped component with fake data to get its return ReactElement to define the name;
      // TODO: Figure out if this will work for custom componentry (e.g. custom over_react composite/function components)
      final elemData = wrappedComponent(JsBackedMap.from({'classes':{'':''}}).deepJsObject,JsBackedMap.from({}).deepJsObject);
      String elemDisplayName = JsBackedMap.fromJs(elemData.type)['displayName'];
      options['name'] = elemDisplayName;
    } catch (_) {}
    defineProperty(wrappedComponent, 'name', jsify({'value': options['name']}));

    final jsOptions = JsBackedMap.from(options).deepJsObject;
    dynamic jsStyles;
    if (styles is Function) {
      jsStyles = allowInterop((jsTheme) {
        final dartTheme = MuiTheme(JsBackedMap().deepConvertFromJs(jsTheme));
        final dartStyles = styles(dartTheme);
        return jsify(dartStyles);
//        return JsBackedMap.from(_styles).deepJsObject;
      });
    } else {
      jsStyles = JsBackedMap.from(styles).deepJsObject;
    }

    return ReactJsFunctionComponentFactoryProxy(
        MaterialUI.withStyles(jsStyles, jsOptions)(wrappedComponent)
    );
  };
}
