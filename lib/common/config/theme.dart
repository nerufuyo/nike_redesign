import 'package:flutter/material.dart';

class AppColors {
  final Color primary = const Color(0xFF000000);
  final Color secondary = const Color(0xFFF5F5F5);
  final Color error = const Color(0xFFB00020);
  final Color background = const Color(0xFFFFFFFF);
}

class AppTypography {
  final String fontFamily = 'HelveticaNow';

  final TextStyle headline1 = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle headline2 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle headline3 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle headline4 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle headline5 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle headline6 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle subtitle1 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle subtitle2 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle bodyText1 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle bodyText2 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle button = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: 'HelveticaNow',
  );

  final TextStyle caption = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    fontFamily: 'HelveticaNow',
  );
}

class AppCustomThemes {
  final AppColors colors = AppColors();
  final AppTypography typography = AppTypography();

  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: colors.primary,
      textTheme: TextTheme(
        displayLarge: typography.headline1,
        displayMedium: typography.headline2,
        displaySmall: typography.headline3,
        headlineMedium: typography.headline4,
        headlineSmall: typography.headline5,
        titleLarge: typography.headline6,
        titleMedium: typography.subtitle1,
        titleSmall: typography.subtitle2,
        bodyLarge: typography.bodyText1,
        bodyMedium: typography.bodyText2,
        labelLarge: typography.button,
        bodySmall: typography.caption,
      ),
      colorScheme: ColorScheme.light(
        primary: colors.primary,
        secondary: colors.secondary,
        error: colors.error,
      ).copyWith(error: colors.error),
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: colors.background,
      textTheme: TextTheme(
        displayLarge: typography.headline1.copyWith(color: colors.secondary),
        displayMedium: typography.headline2.copyWith(color: colors.secondary),
        displaySmall: typography.headline3.copyWith(color: colors.secondary),
        headlineMedium: typography.headline4.copyWith(color: colors.secondary),
        headlineSmall: typography.headline5.copyWith(color: colors.secondary),
        titleLarge: typography.headline6.copyWith(color: colors.secondary),
        titleMedium: typography.subtitle1.copyWith(color: colors.secondary),
        titleSmall: typography.subtitle2.copyWith(color: colors.secondary),
        bodyLarge: typography.bodyText1.copyWith(color: colors.secondary),
        bodyMedium: typography.bodyText2.copyWith(color: colors.secondary),
        labelLarge: typography.button.copyWith(color: colors.secondary),
        bodySmall: typography.caption.copyWith(color: colors.secondary),
      ),
      colorScheme: ColorScheme.dark(
        primary: colors.primary,
        secondary: colors.secondary,
        error: colors.error,
      ).copyWith(error: colors.error),
    );
  }
}
