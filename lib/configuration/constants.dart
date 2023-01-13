import 'package:flutter/material.dart';

class Insets {
  static const double xs = 4;
  static const double s = 8;
  static const double l = 16;
  static const double xl = 20;
  static const double xxl = 32;
}

class Radiuses {
  static const double l = 20;
}

class Palette {
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF5256A9),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFE1E0FF),
    onPrimaryContainer: Color(0xFF080764),
    secondary: Color(0xFFBE003A),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFDADB),
    onSecondaryContainer: Color(0xFF40000E),
    tertiary: Color(0xFF006687),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFC1E8FF),
    onTertiaryContainer: Color(0xFF001E2B),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFCFCFF),
    onBackground: Color(0xFF001D31),
    surface: Color(0xFFFCFCFF),
    onSurface: Color(0xFF001D31),
    surfaceVariant: Color(0xFFE4E1EC),
    onSurfaceVariant: Color(0xFF46464F),
    outline: Color(0xFF777680),
    onInverseSurface: Color(0xFFE7F2FF),
    inverseSurface: Color(0xFF003351),
    inversePrimary: Color(0xFFC0C1FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF5256A9),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFC0C1FF),
    onPrimary: Color(0xFF222578),
    primaryContainer: Color(0xFF3A3D8F),
    onPrimaryContainer: Color(0xFFE1E0FF),
    secondary: Color(0xFFFFB2B7),
    onSecondary: Color(0xFF67001B),
    secondaryContainer: Color(0xFF92002A),
    onSecondaryContainer: Color(0xFFFFDADB),
    tertiary: Color(0xFF72D2FF),
    onTertiary: Color(0xFF003548),
    tertiaryContainer: Color(0xFF004D66),
    onTertiaryContainer: Color(0xFFC1E8FF),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF001D31),
    onBackground: Color(0xFFCDE5FF),
    surface: Color(0xFF001D31),
    onSurface: Color(0xFFCDE5FF),
    surfaceVariant: Color(0xFF46464F),
    onSurfaceVariant: Color(0xFFC7C5D0),
    outline: Color(0xFF918F9A),
    onInverseSurface: Color(0xFF001D31),
    inverseSurface: Color(0xFFCDE5FF),
    inversePrimary: Color(0xFF5256A9),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFC0C1FF),
  );
}
