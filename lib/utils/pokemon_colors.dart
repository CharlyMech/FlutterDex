import 'package:flutter/material.dart';

class PokemonColors {
  static const int _blackPrimaryValue = 0xFF000000;
  static const int _blackAccentValue = 0xFF8C8C8C;
  static const int _bluePrimaryValue = 0xFF3d8bff;
  static const int _blueAccentValue = 0xFFFEFEFF;
  static const int _brownPrimaryValue = 0xFFb8860b;
  static const int _brownAccentValue = 0xFFFFC88A;
  static const int _grayPrimaryValue = 0xFF696969;
  static const int _grayAccentValue = 0xFFEF7272;
  static const int _greenPrimaryValue = 0xFF228b22;
  static const int _greenAccentValue = 0xFF5DFF5D;
  static const int _pinkPrimaryValue = 0xFFdb7093;
  static const int _pinkAccentValue = 0xFFFFE3EA;
  static const int _purplePrimaryValue = 0xFF6a5acd;
  static const int _purpleAccentValue = 0xFFC5BFFF;
  static const int _redPrimaryValue = 0xFFff6347;
  static const int _redAccentValue = 0xFFFFE3EA;
  static const int _whitePrimaryValue = 0xFFE1E1E1;
  static const int _whiteAccentValue = 0xFFffffff;
  static const int _yellowPrimaryValue = 0xFFffd700;
  static const int _yellowAccentValue = 0xFFFFFBF2;

  // Primary Material values
  static const MaterialColor black =
      MaterialColor(_blackPrimaryValue, <int, Color>{
    50: Color(0xFFE0E0E0),
    100: Color(0xFFB3B3B3),
    200: Color(0xFF808080),
    300: Color(0xFF4D4D4D),
    400: Color(0xFF262626),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  });

  static const MaterialColor blue =
      MaterialColor(_bluePrimaryValue, <int, Color>{
    50: Color(0xFFE8F1FF),
    100: Color(0xFFC5DCFF),
    200: Color(0xFF9EC5FF),
    300: Color(0xFF77AEFF),
    400: Color(0xFF5A9CFF),
    500: Color(_bluePrimaryValue),
    600: Color(0xFF3783FF),
    700: Color(0xFF2F78FF),
    800: Color(0xFF276EFF),
    900: Color(0xFF1A5BFF),
  });

  static const MaterialColor brown =
      MaterialColor(_brownPrimaryValue, <int, Color>{
    50: Color(0xFFF6F0E2),
    100: Color(0xFFEADBB6),
    200: Color(0xFFDCC385),
    300: Color(0xFFCDAA54),
    400: Color(0xFFC39830),
    500: Color(_brownPrimaryValue),
    600: Color(0xFFB17E0A),
    700: Color(0xFFA87308),
    800: Color(0xFFA06906),
    900: Color(0xFF915603),
  });

  static const MaterialColor gray =
      MaterialColor(_grayPrimaryValue, <int, Color>{
    50: Color(0xFFEDEDED),
    100: Color(0xFFD2D2D2),
    200: Color(0xFFB4B4B4),
    300: Color(0xFF969696),
    400: Color(0xFF808080),
    500: Color(_grayPrimaryValue),
    600: Color(0xFF616161),
    700: Color(0xFF565656),
    800: Color(0xFF4C4C4C),
    900: Color(0xFF3B3B3B),
  });

  static const MaterialColor green =
      MaterialColor(_greenPrimaryValue, <int, Color>{
    50: Color(0xFFE4F1E4),
    100: Color(0xFFBDDCBD),
    200: Color(0xFF91C591),
    300: Color(0xFF64AE64),
    400: Color(0xFF439C43),
    500: Color(_greenPrimaryValue),
    600: Color(0xFF1E831E),
    700: Color(0xFF197819),
    800: Color(0xFF146E14),
    900: Color(0xFF0C5B0C),
  });

  static const MaterialColor pink =
      MaterialColor(_pinkPrimaryValue, <int, Color>{
    50: Color(0xFFFBEEF2),
    100: Color(0xFFF4D4DF),
    200: Color(0xFFEDB8C9),
    300: Color(0xFFE69BB3),
    400: Color(0xFFE085A3),
    500: Color(_pinkPrimaryValue),
    600: Color(0xFFD7688B),
    700: Color(0xFFD25D80),
    800: Color(0xFFCD5376),
    900: Color(0xFFC44164),
  });

  static const MaterialColor purple =
      MaterialColor(_purplePrimaryValue, <int, Color>{
    50: Color(0xFFEDEBF9),
    100: Color(0xFFD2CEF0),
    200: Color(0xFFB5ADE6),
    300: Color(0xFF978CDC),
    400: Color(0xFF8073D5),
    500: Color(_purplePrimaryValue),
    600: Color(0xFF6252C8),
    700: Color(0xFF5748C1),
    800: Color(0xFF4D3FBA),
    900: Color(0xFF3C2EAE),
  });

  static const MaterialColor red = MaterialColor(_redPrimaryValue, <int, Color>{
    50: Color(0xFFFBEEF2),
    100: Color(0xFFF4D4DF),
    200: Color(0xFFEDB8C9),
    300: Color(0xFFE69BB3),
    400: Color(0xFFE085A3),
    500: Color(_redPrimaryValue),
    600: Color(0xFFD7688B),
    700: Color(0xFFD25D80),
    800: Color(0xFFCD5376),
    900: Color(0xFFC44164),
  });

  static const MaterialColor white =
      MaterialColor(_whitePrimaryValue, <int, Color>{
    50: Color(0xFFFBFBFB),
    100: Color(0xFFF6F6F6),
    200: Color(0xFFF0F0F0),
    300: Color(0xFFEAEAEA),
    400: Color(0xFFE6E6E6),
    500: Color(_whitePrimaryValue),
    600: Color(0xFFDDDDDD),
    700: Color(0xFFD9D9D9),
    800: Color(0xFFD5D5D5),
    900: Color(0xFFCDCDCD),
  });

  static const MaterialColor yellow =
      MaterialColor(_yellowPrimaryValue, <int, Color>{
    50: Color(0xFFFFFAE0),
    100: Color(0xFFFFF3B3),
    200: Color(0xFFFFEB80),
    300: Color(0xFFFFE34D),
    400: Color(0xFFFFDD26),
    500: Color(_yellowPrimaryValue),
    600: Color(0xFFFFD300),
    700: Color(0xFFFFCD00),
    800: Color(0xFFFFC700),
    900: Color(0xFFFFBE00),
  });

  // Accent Material values
  static const MaterialColor blackAccent =
      MaterialColor(_blackAccentValue, <int, Color>{
    100: Color(0xFFA6A6A6),
    200: Color(_blackAccentValue),
    400: Color(0xFF737373),
    700: Color(0xFF666666),
  });

  static const MaterialColor blueAccent =
      MaterialColor(_blueAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_blueAccentValue),
    400: Color(0xFFCBD8FF),
    700: Color(0xFFB2C5FF),
  });

  static const MaterialColor brownAccent =
      MaterialColor(_brownAccentValue, <int, Color>{
    100: Color(0xFFFFE0BD),
    200: Color(_brownAccentValue),
    400: Color(0xFFFFB057),
    700: Color(0xFFFFA43D),
  });

  static const MaterialColor grayAccent =
      MaterialColor(_grayAccentValue, <int, Color>{
    100: Color(0xFFF4A0A0),
    200: Color(_grayAccentValue),
    400: Color(0xFFFF3030),
    700: Color(0xFFFF1616),
  });

  static const MaterialColor greenAccent =
      MaterialColor(_greenAccentValue, <int, Color>{
    100: Color(0xFF90FF90),
    200: Color(_greenAccentValue),
    400: Color(0xFF2AFF2A),
    700: Color(0xFF10FF10),
  });

  static const MaterialColor pinkAccent =
      MaterialColor(_pinkAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_pinkAccentValue),
    400: Color(0xFFFFB0C4),
    700: Color(0xFFFF96B1),
  });

  static const MaterialColor purpleAccent =
      MaterialColor(_purpleAccentValue, <int, Color>{
    100: Color(0xFFF3F2FF),
    200: Color(_purpleAccentValue),
    400: Color(0xFF978CFF),
    700: Color(0xFF8073FF),
  });

  static const MaterialColor redAccent =
      MaterialColor(_redAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_redAccentValue),
    400: Color(0xFFFFB0C4),
    700: Color(0xFFFF96B1),
  });

  static const MaterialColor whiteAccent =
      MaterialColor(_whiteAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_whiteAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });

  static const MaterialColor yellowAccent =
      MaterialColor(_yellowAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_yellowAccentValue),
    400: Color(0xFFFFECBF),
    700: Color(0xFFFFE5A6),
  });
}
