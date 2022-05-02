import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/colors.dart';
import 'package:flutter_application_2/utils/sizeconfig.dart';
import 'package:google_fonts/google_fonts.dart';

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}

var font = GoogleFonts.poppins;

TextTheme textThemePrimary() {
  return TextTheme(
//eg : Hi Geo, Services
    headline1:  font(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600),
// eg : view all
    subtitle2: font(
      color:kViewAll,
      fontSize: 14,
      fontWeight: FontWeight.w500

    )
   
  );
}
