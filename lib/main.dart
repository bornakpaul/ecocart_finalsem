import 'package:ecocart/ui/common/color_theme.dart';
import 'package:ecocart/ui/controllers/main_binding.dart';
import 'package:ecocart/ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: ColorSystem()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EcoCart',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        initialRoute: "/",
        getPages: [
          GetPage(
            name: "/",
            page: () => const MainScreen(),
            binding: MainBinding(),
          ),
        ],
      ),
    );
  }
}
