part of react_material_ui.src.theme;

/// A typed view of a Material UI theme.
///
/// ```
/// // You can omit the them argument to get a typed view of the default Material UI theme
/// final defaultTheme = MuiTheme();
///
/// // Or you can specify your custom theme
/// final myCustomTheme = MuiTheme({
///   'palette': {
///     'secondary': {
///       'main': MuiColors.green[500],
///     },
///   },
/// });
/// ```
///
/// Once you create the view, all the
/// [Material UI Theme Configuration Keys](https://material-ui.com/customization/default-theme/) are
/// available in a typed / auto-completing object which can be accessed like so:
///
/// ```
/// var theCustomColorWeSet = myCustomTheme.palette.secondary.main;
///
/// // The underlying map values can also be mutated like so:
/// myCustomTheme.palette.secondary.main = MuiColors.green[400];
/// ```
@JsonSerializable(explicitToJson: true)
class MuiTheme extends MapView with _AbstractMuiThemeConfig {
  MuiTheme([Map theme = const {}]) : super(_generateMuiTheme(theme));

  factory MuiTheme.fromJson(Map<String, dynamic> json) {
    // Wrap the generated _$MuiThemeFromJson(json) return instance in another instance
    // so that non-serializable pieces of the theme - like functions - get re-hydrated
    // when the them is loaded from local storage.
    return MuiTheme(_$MuiThemeFromJson(json));
  }
  @override Map<String, dynamic> toJson() => _$MuiThemeToJson(this);

  static JsBackedMap _generateMuiTheme([Map map = const {}]) {
    return createMuiTheme(map);
  }

  // ---------- PUBLIC API ---------------

  Breakpoints get breakpoints => Breakpoints(this['breakpoints']);
  set breakpoints(Breakpoints value) => this['breakpoints'] = value.backingMap;

  String get direction => this['direction'];
  set direction(String value) => this['direction'] = value;

  MuiPalette get palette => MuiPalette(this['palette']);
  set palette(MuiPalette value) => this['palette'] = value;

  /// See: <https://material-ui.com/customization/globals/#css>
  Map<String, dynamic> get overrides => Map<String, dynamic>.from(this['overrides']);
  set overrides(Map<String, dynamic> value) => this['overrides'] = value;

  /// See: <https://material-ui.com/customization/globals/#default-props>
  Map<String, dynamic> get props => Map<String, dynamic>.from(this['props']);
  set props(Map<String, dynamic> value) => this['props'] = value;
}
