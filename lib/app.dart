import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunbook/screens/intro_screen.dart';
import 'class/flavors_controller.dart';
import 'class/theme_controller.dart';
import 'services/route_navigator.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routeNav,
      title: Flavor.title,
      darkTheme: ThemeController.themeDataDark,
      theme: ThemeController.themeDataPrimary,
      home: const IntroScreen(),
    );
  }
}
