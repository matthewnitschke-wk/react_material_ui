part of react_material_ui.src.theme;

/// <https://material-ui.com/customization/color>
@JsonSerializable(explicitToJson: true)
class _MuiColors extends MapView with _AbstractMuiThemeConfig {
  _MuiColors([Map colorsMap]) : super(colorsMap ?? {});

  factory _MuiColors.fromJson(Map<String, dynamic> json) => _$_MuiColorsFromJson(json);
  @override Map<String, dynamic> toJson() => _$_MuiColorsToJson(this);

  // ---------- PUBLIC API ---------------

  MuiPaletteColor get blue => MuiPaletteColor(this['blue']);
}

final colors = _MuiColors(JsBackedMap().deepConvertFromJs(MaterialUI.colors));

num getContrastRatio(String color1, String color2) => MaterialUI.getContrastRatio(color1, color2);
