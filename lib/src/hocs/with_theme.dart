library react_material_ui.src.hocs.with_theme;

import 'package:react/react_client.dart';

import 'package:react_material_ui/src/js_interop.dart';

/// <https://material-ui.com/styles/api/#withtheme-component-component>
///
/// TODO: Add example / validate that this works.
ReactJsComponentFactoryProxy withTheme(component) {
  return ReactJsComponentFactoryProxy(MaterialUI.withTheme(component));
}
