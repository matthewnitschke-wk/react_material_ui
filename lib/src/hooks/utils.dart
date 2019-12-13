library react_material_ui.src.hooks.utils;

import 'package:react/react_client/js_backed_map.dart';
import 'make_styles.dart';

/// Returns the value that corresponds to the provided [propKey] within the
/// props map of a function component exposed by a React hook.
///
/// For example, use the value of a function component's props in the
/// hook returned from [makeStyles] like so:
///
/// ```
/// final useStyles = makeStyles({
///   'root': {
///     'backgroundColor': propFromHook('backgroundColor'),
///     'color': propFromHook('color'),
///   },
///   'inner': {
///     'fontSize': propFromHook('innerFontSize'),
///   },
/// });
///
/// final CustomComponent = react.registerFunctionComponent((Map props) {
///   return div({'className': useStyles(props)['root']},
///     div({'className': useStyles(props)['inner']}, props['children']),
///   );
/// });
/// ```
///
/// Then when consuming / rendering the `CustomComponent` declared above,
/// simply pass along the `backgroundColor`, `color` and `innerFontSize` props
/// that the hook makes use of like so:
///
/// ```
/// CustomComponent({
///   'color': '#fafafa'
///   'backgroundColor': '#595959',
///   'innerFontSize': '10px',
/// }, children);
/// ```
///
/// TODO: Figure out if className forwarding can work, or if you just have to do string interpolation alongside the call to `useStyles`.
T Function(JsMap jsProps) propFromHook<T extends Object>(String propKey) {
  return (jsProps) => JsBackedMap.fromJs(jsProps)[propKey] as T;
}
