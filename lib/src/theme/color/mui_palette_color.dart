part of react_material_ui.src.theme;

/// <https://material-ui.com/customization/color>
@JsonSerializable(explicitToJson: true)
class MuiPaletteColor extends MapView with _AbstractMuiThemeConfig {
  MuiPaletteColor([Map hueMap]) : super(hueMap ?? {});

  factory MuiPaletteColor.fromJson(Map<String, dynamic> json) => _$MuiPaletteColorFromJson(json);
  @override Map<String, dynamic> toJson() => _$MuiPaletteColorToJson(this);

  static const Set<String> _shades = {
    '50',
    '100',
    '200',
    '300',
    '400',
    '500',
    '600',
    '700',
    '800',
    '900',
    'A100',
    'A200',
    'A400',
    'A700',
  };

  static const Set<String> _intentions = {
    'light',
    'main',
    'dark',
    'contrastText',
  };

  // ---------- PUBLIC API ---------------

  String get light => this['light'] ?? this['300'];
  set light(String value) => this['light'] = value;

  String get main => this['main'] ?? this['500'];
  set main(String value) => this['main'] = value;

  String get dark => this['dark'] ?? this['700'];
  set dark(String value) => this['dark'] = value;

  String get contrastText => this['contrastText'] /*?? getContrastText(main)*/;
  set contrastText(String value) => this['contrastText'] = value;

  // TODO: Figure out how this is supposed to work
//  String getContrastText(String background) => (this['getContrastText'] as Function)(background);
//  String getContrastText(String background) {
//    return getContrastRatio(background, dark.text.primary) >= contrastThreshold ? dark.text.primary : light.text.primary;
//  }
}

/// <https://material-ui.com/customization/palette/#custom-palette>
@JsonSerializable(explicitToJson: true)
class MuiPaletteCommonColor extends MapView with _AbstractMuiThemeConfig {
  MuiPaletteCommonColor([Map colorMap]) : super(colorMap ?? {});

  factory MuiPaletteCommonColor.fromJson(Map<String, dynamic> json) => _$MuiPaletteCommonColorFromJson(json);
  @override Map<String, dynamic> toJson() => _$MuiPaletteCommonColorToJson(this);

  // ---------- PUBLIC API ---------------

  String get black => this['black'];
  set black(String value) => this['black'] = value;

  String get white => this['white'];
  set white(String value) => this['white'] = value;
}

/// <https://material-ui.com/customization/palette/#custom-palette>
@JsonSerializable(explicitToJson: true)
class MuiPaletteBackground extends MapView with _AbstractMuiThemeConfig {
  MuiPaletteBackground([Map colorMap]) : super(colorMap ?? {});

  factory MuiPaletteBackground.fromJson(Map<String, dynamic> json) => _$MuiPaletteBackgroundFromJson(json);
  @override Map<String, dynamic> toJson() => _$MuiPaletteBackgroundToJson(this);

  // ---------- PUBLIC API ---------------

  String get paper => this['paper'];
  set paper(String value) => this['paper'] = value;

  String get defaultBg => this['default'];
  set defaultBg(String value) => this['default'] = value;
}

/// <https://material-ui.com/customization/palette/#custom-palette>
@JsonSerializable(explicitToJson: true)
class MuiPaletteText extends MapView with _AbstractMuiThemeConfig {
  MuiPaletteText([Map colorMap]) : super(colorMap ?? {});

  factory MuiPaletteText.fromJson(Map<String, dynamic> json) => _$MuiPaletteTextFromJson(json);
  @override Map<String, dynamic> toJson() => _$MuiPaletteTextToJson(this);

  // ---------- PUBLIC API ---------------

  String get primary => this['primary'];
  set primary(String value) => this['primary'] = value;

  String get secondary => this['secondary'];
  set secondary(String value) => this['secondary'] = value;

  String get disabled => this['disabled'];
  set disabled(String value) => this['disabled'] = value;

  String get hint => this['hint'];
  set hint(String value) => this['hint'] = value;
}

/// <https://material-ui.com/customization/palette/#custom-palette>
@JsonSerializable(explicitToJson: true)
class MuiPaletteAction extends MapView with _AbstractMuiThemeConfig {
  MuiPaletteAction([Map colorMap]) : super(colorMap ?? {});

  factory MuiPaletteAction.fromJson(Map<String, dynamic> json) => _$MuiPaletteActionFromJson(json);
  @override Map<String, dynamic> toJson() => _$MuiPaletteActionToJson(this);

  // ---------- PUBLIC API ---------------

  String get active => this['active'];
  set active(String value) => this['active'] = value;

  String get hover => this['hover'];
  set hover(String value) => this['hover'] = value;

  num get hoverOpacity => this['hoverOpacity'];
  set hoverOpacity(num value) => this['hoverOpacity'] = value;

  String get selected => this['selected'];
  set selected(String value) => this['selected'] = value;

  String get disabled => this['disabled'];
  set disabled(String value) => this['disabled'] = value;

  String get disabledBackground => this['disabledBackground'];
  set disabledBackground(String value) => this['disabledBackground'] = value;
}
