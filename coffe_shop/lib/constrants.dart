import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

Widget sperator() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey[200],
    ),
  );
}

final TextColor = hexToColor('#453b37');
final BackgroundColor = hexToColor('#faf6f1');
final ButtonColor = hexToColor('#453b37');
final DetailsBackgroundColor = hexToColor('#f4b4b8');
final priceColor = hexToColor('#d6ad78');
final cardColor = hexToColor('#dbb88a');

class CoffeTheme {
  static TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.nunito(
      color: TextColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    headline2: GoogleFonts.nunito(
      color: TextColor,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    headline3: GoogleFonts.nunito(
      color: TextColor,
      fontSize: 18,
      fontWeight: FontWeight.w200,
    ),
    headline4: GoogleFonts.nunito(
      color: TextColor,
      fontSize: 18,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      scaffoldBackgroundColor: BackgroundColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: BackgroundColor,
        backwardsCompatibility: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: BackgroundColor,
        ),
      ),
      textTheme: textTheme,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        selectedItemColor: TextColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: textTheme.headline4,
        unselectedLabelStyle: textTheme.headline4.copyWith(color: Colors.grey),
      ),
    );
  }
}
