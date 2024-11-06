import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration customInputDecoration({
  required String hintText,
  IconData? icon,
  IconData? suffixIcon,
}) {
  return InputDecoration(
    prefixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
    suffixIcon: suffixIcon != null ? Icon(suffixIcon, color: Colors.grey) : null,
    hintText: hintText,
    hintStyle: GoogleFonts.roboto(color: Colors.grey),
    filled: true,
    fillColor: Colors.white,

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.grey, width: 1.5),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.blue, width: 1.5),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red, width: 1.5),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red, width: 1.5),
    ),
  );
}
