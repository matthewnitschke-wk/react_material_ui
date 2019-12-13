// ignore_for_file: avoid_classes_with_only_static_members
@JS()
library react_material_ui.src.js_interop;

import 'dart:js';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:react/react_client/js_backed_map.dart';
import 'package:react/react_client/react_interop.dart';

/// JS interop wrapper class for [Material UI components](https://material-ui.com/).
///
/// Made available in the app via the following script tag within our app's `index.html`:
///
/// ```
/// <script src="https://unpkg.com/@material-ui/core/umd/material-ui.development.js"></script>
/// ```
@JS()
class MaterialUI {
  // -------------------- Config Maps --------------------
  external static JsMap get colors;
  external static JsMap get classes;

  // -------------------- Config Helpers --------------------
  external static num getContrastRatio(String color1, String color2);

  // -------------------- HOCs --------------------
  // TODO: Standardize / document what the standard HOC JS interop function signature looks like. Is this pretty much it?

  external static JsFunction Function(Function(JsMap injectedProps, [JsMap additionalProps]))
      withStyles(/*JsMap|Function*/dynamic styles, [JsMap options]);
  external static ReactClass withTheme(ReactClass component);
  external static ReactClass get ThemeProvider;

  // -------------------- Hooks --------------------
  // TODO: Standardize / document what the standard hook JS interop function signature looks like. Is this pretty much it?

  external static JsMap useTheme();
  external static JsMap createMuiTheme(JsMap options);

  external static JsMap Function(JsMap properties) makeStyles(/*JsMap|Function*/dynamic styles, [JsMap options]);
  external static JsMap createStyles(JsMap styles);

  external static bool useMediaQuery(/*JsMap|Function*/dynamic query, [JsMap options]);
  external static bool useScrollTrigger([JsMap options]);

  //exports.createGenerateClassName = createGenerateClassName;
//exports.createMuiTheme = createMuiTheme;
//exports.darken = darken;
//exports.decomposeColor = decomposeColor;
//exports.duration = duration;
//exports.easing = easing;
//exports.emphasize = emphasize;
//exports.fade = fade;
//exports.formatMs = formatMs;
//exports.getContrastRatio = getContrastRatio;
//exports.getLuminance = getLuminance;
//exports.hexToRgb = hexToRgb;
//exports.hslToRgb = hslToRgb;
//exports.isNumber = isNumber;
//exports.isString = isString;
//exports.isWidthDown = isWidthDown;
//exports.isWidthUp = isWidthUp;
//exports.jssPreset = jssPreset;
//exports.lighten = lighten;
//exports.recomposeColor = recomposeColor;
//exports.responsiveFontSizes = responsiveFontSizes;
//exports.rgbToHex = rgbToHex;
//exports.styleFunction = styleFunction;
//exports.styled = styled$1;
//exports.useFormControl = useFormControl$1;
//exports.useTheme = useTheme$1;
//exports.withMobileDialog = withMobileDialog;
//exports.withTheme = withTheme$1;
//exports.withWidth = withWidth;

  // -------------------- Components --------------------
  external static ReactClass get AppBar;
  external static ReactClass get Avatar;
  external static ReactClass get Backdrop;
  external static ReactClass get Badge;
  external static ReactClass get BottomNavigation;
  external static ReactClass get BottomNavigationAction;
  external static ReactClass get Box;
  external static ReactClass get Breadcrumbs;
  external static ReactClass get Button;
  external static ReactClass get ButtonBase;
  external static ReactClass get ButtonGroup;
  external static ReactClass get Card;
  external static ReactClass get CardActionArea;
  external static ReactClass get CardActions;
  external static ReactClass get CardContent;
  external static ReactClass get CardHeader;
  external static ReactClass get CardMedia;
  external static ReactClass get Checkbox;
  external static ReactClass get Chip;
  external static ReactClass get CircularProgress;
  external static ReactClass get ClickAwayListener;
  external static ReactClass get Collapse;
  external static ReactClass get Container;
  external static ReactClass get CssBaseline;
  external static ReactClass get Dialog;
  external static ReactClass get DialogActions;
  external static ReactClass get DialogContent;
  external static ReactClass get DialogContentText;
  external static ReactClass get DialogTitle;
  external static ReactClass get Divider;
  external static ReactClass get Drawer;
  external static ReactClass get ExpansionPanel;
  external static ReactClass get ExpansionPanelActions;
  external static ReactClass get ExpansionPanelDetails;
  external static ReactClass get ExpansionPanelSummary;
  external static ReactClass get Fab;
  external static ReactClass get Fade;
  external static ReactClass get FilledInput;
  external static ReactClass get FormControl;
  external static ReactClass get FormControlLabel;
  external static ReactClass get FormGroup;
  external static ReactClass get FormHelperText;
  external static ReactClass get FormLabel;
  external static ReactClass get Grid;
  external static ReactClass get GridList;
  external static ReactClass get GridListTile;
  external static ReactClass get GridListTileBar;
  external static ReactClass get Grow;
  external static ReactClass get Hidden;
  external static ReactClass get Icon;
  external static ReactClass get IconButton;
  external static ReactClass get Input;
  external static ReactClass get InputAdornment;
  external static ReactClass get InputBase;
  external static ReactClass get InputLabel;
  external static ReactClass get LinearProgress;
  external static ReactClass get Link;
  external static ReactClass get List;
  external static ReactClass get ListItem;
  external static ReactClass get ListItemAvatar;
  external static ReactClass get ListItemIcon;
  external static ReactClass get ListItemSecondaryAction;
  external static ReactClass get ListItemText;
  external static ReactClass get ListSubheader;
  external static ReactClass get Menu;
  external static ReactClass get MenuItem;
  external static ReactClass get MenuList;
  external static ReactClass get MobileStepper;
  external static ReactClass get Modal;
  external static ReactClass get NativeSelect;
  external static ReactClass get NoSsr;
  external static ReactClass get OutlinedInput;
  external static ReactClass get Paper;
  external static ReactClass get Popover;
  external static ReactClass get Popper;
  external static ReactClass get Portal;
  external static ReactClass get Radio;
  external static ReactClass get RadioGroup;
  external static ReactClass get RootRef;
  external static ReactClass get Select;
  external static ReactClass get Slide;
  external static ReactClass get Slider;
  external static ReactClass get Snackbar;
  external static ReactClass get SnackbarContent;
  external static ReactClass get Step;
  external static ReactClass get StepButton;
  external static ReactClass get StepConnector;
  external static ReactClass get StepContent;
  external static ReactClass get StepIcon;
  external static ReactClass get StepLabel;
  external static ReactClass get Stepper;
  external static ReactClass get SvgIcon;
  external static ReactClass get SwipeableDrawer;
  external static ReactClass get Switch;
  external static ReactClass get Tab;
  external static ReactClass get Table;
  external static ReactClass get TableBody;
  external static ReactClass get TableCell;
  external static ReactClass get TableContainer;
  external static ReactClass get TableFooter;
  external static ReactClass get TableHead;
  external static ReactClass get TablePagination;
  external static ReactClass get TableRow;
  external static ReactClass get TableSortLabel;
  external static ReactClass get Tabs;
  external static ReactClass get TextField;
  external static ReactClass get TextareaAutosize;
  external static ReactClass get Toolbar;
  external static ReactClass get Tooltip;
  external static ReactClass get Typography;
  external static ReactClass get Zoom;
}

@JS('Object.defineProperty')
external void defineProperty(dynamic object, String propertyName, JsMap descriptor);

String getJsFunctionName(Function object) =>
    getProperty(object, 'name') ?? getProperty(object, '\$static_name');

//exports.AppBar = AppBar$1;
//exports.Avatar = Avatar$1;
//exports.Backdrop = Backdrop$1;
//exports.Badge = Badge$1;
//exports.BottomNavigation = BottomNavigation$1;
//exports.BottomNavigationAction = BottomNavigationAction$1;
//exports.Box = Box;
//exports.Breadcrumbs = Breadcrumbs$1;
//exports.Button = Button$1;
//exports.ButtonBase = ButtonBase$1;
//exports.ButtonGroup = ButtonGroup$1;
//exports.Card = Card$1;
//exports.CardActionArea = CardActionArea$1;
//exports.CardActions = CardActions$1;
//exports.CardContent = CardContent$1;
//exports.CardHeader = CardHeader$1;
//exports.CardMedia = CardMedia$1;
//exports.Checkbox = Checkbox$1;
//exports.Chip = Chip$1;
//exports.CircularProgress = CircularProgress$1;
//exports.ClickAwayListener = ClickAwayListener;
//exports.Collapse = Collapse$1;
//exports.Container = Container$1;
//exports.CssBaseline = CssBaseline;
//exports.Dialog = Dialog$1;
//exports.DialogActions = DialogActions$1;
//exports.DialogContent = DialogContent$1;
//exports.DialogContentText = DialogContentText$1;
//exports.DialogTitle = DialogTitle$1;
//exports.Divider = Divider$1;
//exports.Drawer = Drawer$1;
//exports.ExpansionPanel = ExpansionPanel$1;
//exports.ExpansionPanelActions = ExpansionPanelActions$1;
//exports.ExpansionPanelDetails = ExpansionPanelDetails$1;
//exports.ExpansionPanelSummary = ExpansionPanelSummary$1;
//exports.Fab = Fab$1;
//exports.Fade = Fade;
//exports.FilledInput = FilledInput$1;
//exports.FormControl = FormControl$1;
//exports.FormControlLabel = FormControlLabel$1;
//exports.FormGroup = FormGroup$1;
//exports.FormHelperText = FormHelperText$1;
//exports.FormLabel = FormLabel$1;
//exports.Grid = StyledGrid;
//exports.GridList = GridList$1;
//exports.GridListTile = GridListTile$1;
//exports.GridListTileBar = GridListTileBar$1;
//exports.Grow = Grow;
//exports.Hidden = Hidden;
//exports.Icon = Icon$1;
//exports.IconButton = IconButton$1;
//exports.Input = Input$1;
//exports.InputAdornment = InputAdornment$1;
//exports.InputBase = InputBase$1;
//exports.InputLabel = InputLabel$1;
//exports.LinearProgress = LinearProgress$1;
//exports.Link = Link$1;
//exports.List = List$1;
//exports.ListItem = ListItem$1;
//exports.ListItemAvatar = ListItemAvatar$1;
//exports.ListItemIcon = ListItemIcon$1;
//exports.ListItemSecondaryAction = ListItemSecondaryAction$1;
//exports.ListItemText = ListItemText$1;
//exports.ListSubheader = ListSubheader$1;
//exports.Menu = Menu$1;
//exports.MenuItem = MenuItem$1;
//exports.MenuList = MenuList;
//exports.MobileStepper = MobileStepper$1;
//exports.Modal = Modal;
//exports.ModalManager = ModalManager;
//exports.MuiThemeProvider = ThemeProvider;
//exports.NativeSelect = NativeSelect$1;
//exports.NoSsr = NoSsr;
//exports.OutlinedInput = OutlinedInput$1;
//exports.Paper = Paper$1;
//exports.Popover = Popover$1;
//exports.Popper = Popper$1;
//exports.Portal = Portal;
//exports.Radio = Radio$1;
//exports.RadioGroup = RadioGroup;
//exports.RootRef = RootRef;
//exports.Select = Select$1;
//exports.ServerStyleSheets = ServerStyleSheets;
//exports.Slide = Slide;
//exports.Slider = Slider$1;
//exports.Snackbar = Snackbar$1;
//exports.SnackbarContent = SnackbarContent$1;
//exports.Step = Step$1;
//exports.StepButton = StepButton$1;
//exports.StepConnector = StepConnector$1;
//exports.StepContent = StepContent$1;
//exports.StepIcon = StepIcon$1;
//exports.StepLabel = StepLabel$1;
//exports.Stepper = Stepper$1;
//exports.StylesProvider = StylesProvider;
//exports.SvgIcon = SvgIcon$1;
//exports.SwipeableDrawer = SwipeableDrawer;
//exports.Switch = Switch$1;
//exports.Tab = Tab$1;
//exports.Table = Table$1;
//exports.TableBody = TableBody$1;
//exports.TableCell = TableCell$1;
//exports.TableFooter = TableFooter$1;
//exports.TableHead = TableHead$1;
//exports.TablePagination = TablePagination$1;
//exports.TableRow = TableRow$1;
//exports.TableSortLabel = TableSortLabel$1;
//exports.Tabs = Tabs$1;
//exports.TextField = TextField$1;
//exports.TextareaAutosize = TextareaAutosize;
//exports.ThemeProvider = ThemeProvider;
//exports.Toolbar = Toolbar$1;
//exports.Tooltip = Tooltip$1;
//exports.Typography = Typography$1;
//exports.Zoom = Zoom;
//exports.colors = index;
//exports.createGenerateClassName = createGenerateClassName;
//exports.createMuiTheme = createMuiTheme;
//exports.createStyles = createStyles$1;
//exports.darken = darken;
//exports.decomposeColor = decomposeColor;
//exports.duration = duration;
//exports.easing = easing;
//exports.emphasize = emphasize;
//exports.fade = fade;
//exports.formatMs = formatMs;
//exports.getContrastRatio = getContrastRatio;
//exports.getLuminance = getLuminance;
//exports.hexToRgb = hexToRgb;
//exports.hslToRgb = hslToRgb;
//exports.isNumber = isNumber;
//exports.isString = isString;
//exports.isWidthDown = isWidthDown;
//exports.isWidthUp = isWidthUp;
//exports.jssPreset = jssPreset;
//exports.lighten = lighten;
//exports.makeStyles = makeStyles$1;
//exports.recomposeColor = recomposeColor;
//exports.responsiveFontSizes = responsiveFontSizes;
//exports.rgbToHex = rgbToHex;
//exports.styleFunction = styleFunction;
//exports.styled = styled$1;
//exports.useFormControl = useFormControl$1;
//exports.useMediaQuery = useMediaQuery;
//exports.useScrollTrigger = useScrollTrigger;
//exports.useTheme = useTheme$1;
//exports.withMobileDialog = withMobileDialog;
//exports.withStyles = withStyles$1;
//exports.withTheme = withTheme$1;
//exports.withWidth = withWidth;
