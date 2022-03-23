import 'package:ecocart/ui/common/color_theme.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  const CustomAppbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: ColorSystem.of(context).primaryColor,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      leading: const Icon(
        Icons.arrow_left,
        color: Colors.transparent,
      ),
    );
  }
}
