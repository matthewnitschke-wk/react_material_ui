library react_material_ui.src.theme;

import 'dart:collection';
import 'dart:convert';
import 'dart:developer';
import 'dart:js';

import 'package:json_annotation/json_annotation.dart';
import 'package:react/react_client/js_backed_map.dart';
import 'package:react_material_ui/src/hooks.dart';
import 'package:react_material_ui/src/js_interop.dart';
import 'package:react_material_ui/src/util/js_util.dart';

part 'theme.g.dart';

part 'package:react_material_ui/src/theme/abstract_theme_config.dart';
part 'package:react_material_ui/src/theme/breakpoints.dart';
part 'package:react_material_ui/src/theme/color/colors.dart';
part 'package:react_material_ui/src/theme/color/mui_palette.dart';
part 'package:react_material_ui/src/theme/color/mui_palette_color.dart';
part 'package:react_material_ui/src/theme/mui_theme.dart';

final classes = JsBackedMap().deepConvertFromJs(MaterialUI.classes);
final defaultMuiTheme = MuiTheme();
