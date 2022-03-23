import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorSystem {
  final primaryColor = const Color(0xff1572A1);
  final Color shadowColor = const Color.fromRGBO(0, 0, 0, 0.12);
  final Color borderDarkColor = const Color(0xff000000);

  static ColorSystem of(BuildContext context) =>
      Provider.of<ColorSystem>(context, listen: false);
}
