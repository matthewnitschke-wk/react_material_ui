import 'dart:js';

import 'package:react/react_client.dart';
import 'package:react/react_client/js_backed_map.dart';
import 'package:react/react_client/react_interop.dart';

/// <https://github.com/mui-org/material-ui/blob/master/packages/material-ui-types/index.d.ts#L20-L32>
typedef PropInjector =
    ReactJsFunctionComponentFactoryProxy Function(ReactElement Function(Map injectedProps, [Map options]));

typedef Hook =
    Function Function(Map Function(/*Map|Function*/dynamic propsOrPropsFn));

typedef StyleRulesCallback<Theme extends Object, Styles extends Map, S extends String> = Map<Styles, Map> Function(Theme theme);

class StyleRules<C extends ClassKey> extends JsBackedMap {
  C get classes => this['classes'];
}

class ClassKey extends JsBackedMap {
  set root(Map<String, dynamic> value) => this['root'] = value;
  Map<String, dynamic> get root => this['root'];
}
