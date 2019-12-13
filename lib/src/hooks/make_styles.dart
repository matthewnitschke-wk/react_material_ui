library react_material_ui.src.hooks.make_styles;

import 'dart:developer';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:react/react_client/js_backed_map.dart';
import 'package:react/react_client/js_interop_helpers.dart';
import 'package:react_material_ui/src/js_interop.dart';
import 'package:react_material_ui/src/util/js_util.dart';

/// <https://material-ui.com/styles/api/#makestyles-styles-options-hook>
///
/// TODO: Look into the number of CSS classes being created... seems like maybe the hook is getting invoked twice?
///
/// TODO: Explain / document the difference between using the return value as the value of `props.classes`, versus using a specific key of the return value in `props.className` (something to do with the following error when trying to use `classes` on a primitive compoennt like div):
///
///     the key `inner` provided to the classes prop is not implemented in ForwardRef(AppBar).
///     You can only override one of the following: root,positionFixed,positionAbsolute,positionSticky,positionStatic,positionRelative,colorDefault,colorPrimary,colorSecondary.
///     in WithStyles (created by TodoAppBar)
///     in TodoAppBar (created by TodoApp)
///     in TodoApp (created by Connect(TodoApp))
///     in Connect(TodoApp)
Map Function(Map properties) makeStyles(/*Map|Function*/dynamic styles, [Map options = const {}]) {
  if (styles is! Function && styles is! Map) {
    throw ArgumentError.value(styles, 'styles', 'styles must be a Map, or a function that returns a Map.');
  }

  final jsOptions = JsBackedMap.from(options).deepJsObject;
  dynamic jsStyles;
  if (styles is Function) {
    jsStyles = allowInterop((jsProps) {
      final dartProps = JsBackedMap().deepConvertFromJs(jsProps);
      final dartStyles = styles(dartProps);
      return jsify(dartStyles);
    });
  } else {
    jsStyles = JsBackedMap.from(styles).deepJsObject;
  }

  // TODO: How do we convert the properties argument of the returned hook function from a JsMap to a Map?
  return (Map properties) {
    final jsProps = jsifyAndAllowInterop(properties);
    var dartProps = JsBackedMap().deepConvertFromJs(
      MaterialUI.makeStyles(jsStyles, jsOptions)(jsProps)
    );

    return dartProps;
  };
}
