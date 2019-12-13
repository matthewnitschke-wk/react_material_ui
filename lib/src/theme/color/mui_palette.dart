part of react_material_ui.src.theme;

/// <https://material-ui.com/customization/palette/#custom-palette>
@JsonSerializable(explicitToJson: true)
class MuiPalette extends MapView with _AbstractMuiThemeConfig {
  MuiPalette([Map paletteMap]) : super(paletteMap ?? {});

  factory MuiPalette.fromJson(Map<String, dynamic> json) => _$MuiPaletteFromJson(json);
  @override Map<String, dynamic> toJson() => _$MuiPaletteToJson(this);

  // ---------- PUBLIC API ---------------

  MuiPaletteCommonColor get common => MuiPaletteCommonColor(this['common']);
  set common(MuiPaletteCommonColor value) => this['common'] = value;

  /// <https://material-ui.com/customization/palette/#type-light-dark-theme>
  String get type => this['type'];
  set type(String value) {
    assert(value == 'light' || value == 'dark');

    if (value != this['type']) {
      this['type'] = value;

      // When the theme type gets toggled, the following palette values also get updated
      // on the JS side:
      //   * palette.text
      //   * palette.divider
      //   * palette.background
      //   * palette.action
      //
      // So we need to mimic that dynamic map merging here by passing in a map with no other theme keys or values
      // except the palette type and let the call to `createMuiTheme` within the `MuiTheme` constructor do the rest.
      final mergedThemePaletteAfterTypeUpdate = MuiTheme({'palette': {'type': value}}).palette;
      background = mergedThemePaletteAfterTypeUpdate.background;
      text = mergedThemePaletteAfterTypeUpdate.text;
      divider = mergedThemePaletteAfterTypeUpdate.divider;
      action = mergedThemePaletteAfterTypeUpdate.action;
    }
  }

  MuiPaletteColor get primary => MuiPaletteColor(this['primary']);
  set primary(MuiPaletteColor value) => this['primary'] = value;

  MuiPaletteColor get secondary => MuiPaletteColor(this['secondary']);
  set secondary(MuiPaletteColor value) => this['secondary'] = value;

  MuiPaletteColor get error => MuiPaletteColor(this['error']);
  set error(MuiPaletteColor value) => this['error'] = value;

  MuiPaletteColor get grey => MuiPaletteColor(this['grey']);
  set grey(MuiPaletteColor value) => this['grey'] = value;

  int get contrastThreshold => this['contrastThreshold'];
  set contrastThreshold(int value) => this['contrastThreshold'] = value;

//  String getContrastText(String color) => allowInterop(this['getContrastText'] as Function)(color);

  MuiPaletteBackground get background => MuiPaletteBackground(this['background']);
  set background(MuiPaletteBackground value) => this['background'] = value;

  MuiPaletteText get text => MuiPaletteText(this['text']);
  set text(MuiPaletteText value) => this['text'] = value;

  MuiPaletteAction get action => MuiPaletteAction(this['action']);
  set action(MuiPaletteAction value) => this['action'] = value;

  String get divider => this['divider'];
  set divider(String value) => this['divider'] = value;
}
