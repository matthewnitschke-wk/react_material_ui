import 'package:react/react_client.dart';
import 'package:react_material_ui/src/js_interop.dart';

/// Wrap the `ThemeProvider` component around any Material UI component
/// that you want to inject with a custom theme.
///
/// ```
/// import 'package:react/react_dom.dart' as react_dom;
/// import 'package:react_material_ui/react_material_ui.dart';
///
/// main() {
///   // You only need to add keys / values for the part(s) you want to customize.
///   // All of the rest of the values will be merged in from the default theme.
///   final myCustomTheme = {
///     'palette': {
///       'secondary': {
///         'main': colors['orange'][500],
///       },
///     },
///   };
///
///   final themedComponent = ThemeProvider({'theme': myCustomTheme},
///     Box({}, 'This now has a custom theme context!'),
///   );
///
///   react_dom.render(themedComponent, someMountNode);
/// }
/// ```
///
/// See: <https://material-ui.com/customization/theming/#theme-provider>
///
/// For all possible values for the `theme` prop, see <https://material-ui.com/customization/default-theme/>
final ThemeProvider = ReactJsComponentFactoryProxy(MaterialUI.ThemeProvider);
