library react_material_ui.src.hooks.use_media_query;

import 'package:js/js.dart';
import 'package:react/react_client/js_backed_map.dart';
import 'package:react_material_ui/src/js_interop.dart';

/// <https://material-ui.com/components/use-media-query/>
bool useMediaQuery</*Theme*/T>(/*String|Function*/dynamic query, [Map options = const {}]) {
  if (query is! Function && query is! String) {
    throw ArgumentError.value(query, 'query', 'query must be a string, or a function that returns a string.');
  }

  dynamic queryArg = query;
  if (query is Function) queryArg = allowInterop(query);

  return MaterialUI.useMediaQuery(queryArg, JsBackedMap.from(options).jsObject);
}
