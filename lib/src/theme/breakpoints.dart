part of react_material_ui.src.theme;

@JsonSerializable()
class Breakpoints with _AbstractMuiThemeConfig {
  @JsonKey(ignore: true)
  final Map backingMap;

  Breakpoints([Map map]) : backingMap = map ?? {};

  factory Breakpoints.fromJson(Map<String, dynamic> json) => _$BreakpointsFromJson(json);
  @override Map<String, dynamic> toJson() => _$BreakpointsToJson(this);

  // ---------- PUBLIC API ---------------

  List<String> get keys => (backingMap['keys'] as List).cast<String>();
  set keys(List<String> value) => backingMap['keys'] = value;

  Map<String, int> get values => (backingMap['values'] as Map).cast<String, int>();
  set values(Map<String, int> value) => backingMap['values'] = value;

  /// <https://material-ui.com/customization/breakpoints/#theme-breakpoints-up-key-media-query>
  String up(String key) {
    assert(keys.contains(key));
    return (backingMap['up'] as Function)(key);
  }

  /// <https://material-ui.com/customization/breakpoints/#theme-breakpoints-down-key-media-query>
  String down(String key) {
    assert(keys.contains(key));
    return (backingMap['down'] as Function)(key);
  }

  /// <https://material-ui.com/customization/breakpoints/#theme-breakpoints-only-key-media-query>
  String only(String key) {
    assert(keys.contains(key));
    return (backingMap['only'] as Function)(key);
  }

  /// <https://material-ui.com/customization/breakpoints/#theme-breakpoints-between-start-end-media-query>
  String between(String lowerBound, String upperBound) {
    assert(keys.contains(lowerBound));
    assert(keys.contains(upperBound));
    return (backingMap['between'] as Function)(lowerBound, upperBound);
  }

  /// Adds the provided [breakpoints] by adding each key in the map to [keys], and each value to [values].
  void add(Map<String, int> breakpoints) {
    assert(!breakpoints.keys.any((key) => keys.contains(key)));
    backingMap
      ..['keys']   = [...keys, ...breakpoints.keys]
      ..['values'] = {
        ...values,
        ...breakpoints,
      };
  }

  /// Removes the provided [breakpoints] by remove each key in the map from [keys], and each value from [values].
  void remove(Map<String, int> breakpoints) {
    assert(breakpoints.keys.every((key) => keys.contains(key)));
    breakpoints.forEach((mapKey, mapValue) {
      keys.removeWhere((key) => key == mapKey);
      values.removeWhere((key, value) => key == mapKey);
    });
  }
}
