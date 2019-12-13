library react_material_ui.src.hooks.create_mui_theme;

import 'package:react/react_client/js_backed_map.dart';
import 'package:react_material_ui/src/js_interop.dart';
import 'package:react_material_ui/src/util/js_util.dart';

/// <https://material-ui.com/customization/theming/#createmuitheme-options-args-theme>
JsBackedMap createMuiTheme([Map options]) {
  final jsTheme = MaterialUI.createMuiTheme(JsBackedMap.from(options).deepJsObject);
  return JsBackedMap().deepConvertFromJs(jsTheme);
}
