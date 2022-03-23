import 'package:ecocart/ui/common/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(
          title: 'ECOCART',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
