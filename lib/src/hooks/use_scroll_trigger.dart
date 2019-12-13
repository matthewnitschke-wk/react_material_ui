library react_material_ui.src.hooks.use_scroll_trigger;

import 'package:react/react_client/js_backed_map.dart';
import 'package:react_material_ui/src/js_interop.dart';

/// <https://material-ui.com/components/app-bar/#usescrolltrigger-options-trigger>
bool useScrollTrigger([Map options = const {}]) {
  return MaterialUI.useScrollTrigger(JsBackedMap.from(options).jsObject);
}
