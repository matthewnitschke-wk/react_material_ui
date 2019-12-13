// GENERATED CODE - DO NOT MODIFY BY HAND

part of react_material_ui.src.theme;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Breakpoints _$BreakpointsFromJson(Map<String, dynamic> json) {
  return Breakpoints()
    ..keys = (json['keys'] as List)?.map((e) => e as String)?.toList()
    ..values = (json['values'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as int),
    );
}

Map<String, dynamic> _$BreakpointsToJson(Breakpoints instance) =>
    <String, dynamic>{'keys': instance.keys, 'values': instance.values};

_MuiColors _$_MuiColorsFromJson(Map<String, dynamic> json) {
  return _MuiColors();
}

Map<String, dynamic> _$_MuiColorsToJson(_MuiColors instance) =>
    <String, dynamic>{};

MuiPalette _$MuiPaletteFromJson(Map<String, dynamic> json) {
  return MuiPalette()
    ..common = json['common'] == null
        ? null
        : MuiPaletteCommonColor.fromJson(json['common'] as Map<String, dynamic>)
    ..type = json['type'] as String
    ..primary = json['primary'] == null
        ? null
        : MuiPaletteColor.fromJson(json['primary'] as Map<String, dynamic>)
    ..secondary = json['secondary'] == null
        ? null
        : MuiPaletteColor.fromJson(json['secondary'] as Map<String, dynamic>)
    ..error = json['error'] == null
        ? null
        : MuiPaletteColor.fromJson(json['error'] as Map<String, dynamic>)
    ..grey = json['grey'] == null
        ? null
        : MuiPaletteColor.fromJson(json['grey'] as Map<String, dynamic>)
    ..contrastThreshold = json['contrastThreshold'] as int
    ..background = json['background'] == null
        ? null
        : MuiPaletteBackground.fromJson(
            json['background'] as Map<String, dynamic>)
    ..text = json['text'] == null
        ? null
        : MuiPaletteText.fromJson(json['text'] as Map<String, dynamic>)
    ..action = json['action'] == null
        ? null
        : MuiPaletteAction.fromJson(json['action'] as Map<String, dynamic>)
    ..divider = json['divider'] as String;
}

Map<String, dynamic> _$MuiPaletteToJson(MuiPalette instance) =>
    <String, dynamic>{
      'common': instance.common?.toJson(),
      'type': instance.type,
      'primary': instance.primary?.toJson(),
      'secondary': instance.secondary?.toJson(),
      'error': instance.error?.toJson(),
      'grey': instance.grey?.toJson(),
      'contrastThreshold': instance.contrastThreshold,
      'background': instance.background?.toJson(),
      'text': instance.text?.toJson(),
      'action': instance.action?.toJson(),
      'divider': instance.divider
    };

MuiPaletteColor _$MuiPaletteColorFromJson(Map<String, dynamic> json) {
  return MuiPaletteColor()
    ..light = json['light'] as String
    ..main = json['main'] as String
    ..dark = json['dark'] as String
    ..contrastText = json['contrastText'] as String;
}

Map<String, dynamic> _$MuiPaletteColorToJson(MuiPaletteColor instance) =>
    <String, dynamic>{
      'light': instance.light,
      'main': instance.main,
      'dark': instance.dark,
      'contrastText': instance.contrastText
    };

MuiPaletteCommonColor _$MuiPaletteCommonColorFromJson(
    Map<String, dynamic> json) {
  return MuiPaletteCommonColor()
    ..black = json['black'] as String
    ..white = json['white'] as String;
}

Map<String, dynamic> _$MuiPaletteCommonColorToJson(
        MuiPaletteCommonColor instance) =>
    <String, dynamic>{'black': instance.black, 'white': instance.white};

MuiPaletteBackground _$MuiPaletteBackgroundFromJson(Map<String, dynamic> json) {
  return MuiPaletteBackground()
    ..paper = json['paper'] as String
    ..defaultBg = json['defaultBg'] as String;
}

Map<String, dynamic> _$MuiPaletteBackgroundToJson(
        MuiPaletteBackground instance) =>
    <String, dynamic>{'paper': instance.paper, 'defaultBg': instance.defaultBg};

MuiPaletteText _$MuiPaletteTextFromJson(Map<String, dynamic> json) {
  return MuiPaletteText()
    ..primary = json['primary'] as String
    ..secondary = json['secondary'] as String
    ..disabled = json['disabled'] as String
    ..hint = json['hint'] as String;
}

Map<String, dynamic> _$MuiPaletteTextToJson(MuiPaletteText instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
      'disabled': instance.disabled,
      'hint': instance.hint
    };

MuiPaletteAction _$MuiPaletteActionFromJson(Map<String, dynamic> json) {
  return MuiPaletteAction()
    ..active = json['active'] as String
    ..hover = json['hover'] as String
    ..hoverOpacity = json['hoverOpacity'] as num
    ..selected = json['selected'] as String
    ..disabled = json['disabled'] as String
    ..disabledBackground = json['disabledBackground'] as String;
}

Map<String, dynamic> _$MuiPaletteActionToJson(MuiPaletteAction instance) =>
    <String, dynamic>{
      'active': instance.active,
      'hover': instance.hover,
      'hoverOpacity': instance.hoverOpacity,
      'selected': instance.selected,
      'disabled': instance.disabled,
      'disabledBackground': instance.disabledBackground
    };

MuiTheme _$MuiThemeFromJson(Map<String, dynamic> json) {
  return MuiTheme()
    ..breakpoints = json['breakpoints'] == null
        ? null
        : Breakpoints.fromJson(json['breakpoints'] as Map<String, dynamic>)
    ..direction = json['direction'] as String
    ..palette = json['palette'] == null
        ? null
        : MuiPalette.fromJson(json['palette'] as Map<String, dynamic>)
    ..overrides = json['overrides'] as Map<String, dynamic>
    ..props = json['props'] as Map<String, dynamic>;
}

Map<String, dynamic> _$MuiThemeToJson(MuiTheme instance) => <String, dynamic>{
      'breakpoints': instance.breakpoints?.toJson(),
      'direction': instance.direction,
      'palette': instance.palette?.toJson(),
      'overrides': instance.overrides,
      'props': instance.props
    };
