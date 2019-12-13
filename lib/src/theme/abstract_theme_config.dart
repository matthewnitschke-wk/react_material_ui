part of react_material_ui.src.theme;

mixin _AbstractMuiThemeConfig {
  Map<String, dynamic> toJson();

  @override
  String toString() => json.encode(toJson());
}
