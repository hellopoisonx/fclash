// Theme config for FlexColorScheme version 7.3.x. Make sure you use
// same or higher package version, but still same major version. If you
// use a lower package version, some properties may not be supported.
// In that case remove them after copying this theme to your app.
import 'package:flex_color_scheme/flex_color_scheme.dart';

final light = FlexThemeData.light(
  scheme: FlexScheme.material,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  tooltipsMatchBackground: true,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    defaultRadius: 20.0,
    adaptiveRadius: FlexAdaptive.all(),
    defaultRadiusAdaptive: 20.0,
    textButtonRadius: 20.0,
    filledButtonRadius: 20.0,
    elevatedButtonRadius: 20.0,
    outlinedButtonRadius: 20.0,
    toggleButtonsRadius: 20.0,
    segmentedButtonRadius: 20.0,
    fabUseShape: true,
    chipRadius: 20.0,
    alignedDropdown: true,
    dialogElevation: 0.0,
    useInputDecoratorThemeInDialogs: true,
    navigationRailElevation: 10.0,
  ),
  keyColors: const FlexKeyColors(),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  //fontFamily: GoogleFonts.acme().fontFamily,
);
final dark = FlexThemeData.dark(
  scheme: FlexScheme.material,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  tooltipsMatchBackground: true,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    defaultRadius: 20.0,
    adaptiveRadius: FlexAdaptive.all(),
    defaultRadiusAdaptive: 20.0,
    textButtonRadius: 20.0,
    filledButtonRadius: 20.0,
    elevatedButtonRadius: 20.0,
    outlinedButtonRadius: 20.0,
    toggleButtonsRadius: 20.0,
    segmentedButtonRadius: 20.0,
    fabUseShape: true,
    chipRadius: 20.0,
    alignedDropdown: true,
    dialogElevation: 0.0,
    useInputDecoratorThemeInDialogs: true,
    navigationRailElevation: 10.0,
  ),
  keyColors: const FlexKeyColors(),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  //fontFamily: GoogleFonts.acme().fontFamily,
);
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,
