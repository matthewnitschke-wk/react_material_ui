library react_material_ui.src.hooks.use_theme;

import 'package:react/react_client/js_backed_map.dart';
import 'package:react_material_ui/src/js_interop.dart';
import 'package:react_material_ui/src/theme.dart';
import 'package:react_material_ui/src/util/js_util.dart';

/// <https://material-ui.com/styles/api/#usetheme-theme>
///
/// In most cases, it seems like using the `ThemeProvider` HOC makes more sense.
///
/// TODO: Add example / verify that this works.
MuiTheme useTheme() {
  return MuiTheme(JsBackedMap().deepConvertFromJs(MaterialUI.useTheme()));
}
