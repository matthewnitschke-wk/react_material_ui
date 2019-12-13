library react_material_ui;

export 'package:react_material_ui/src/components.dart';
export 'package:react_material_ui/src/util/js_util.dart' hide forwardRefToJsComponent;
export 'package:react_material_ui/src/util/typedefs.dart';
export 'package:react_material_ui/theming.dart';


// TODO: Find a place for these that make sense
const shrinkToFit = {
  'flexGrow': 0,
  'flexShrink': 0,
  'flexBasis': 'auto',
};

const grow = {
  'flexGrow': 1,
  'flexShrink': 1,
  'flexBasis': '0%',
};
