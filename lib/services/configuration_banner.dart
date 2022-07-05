import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sunbook/screens/login_screen.dart';
import '../class/flavors_controller.dart';

Widget _flavorBanner({required Widget? child, bool show = true}) => show
    ? Banner(
        location: BannerLocation.topStart,
        message: Flavor.name,
        color: Colors.green.withOpacity(0.6),
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12.0,
          letterSpacing: 1.0,
        ),
        textDirection: TextDirection.ltr,
        child: child,
      )
    : Container(
        child: child,
      );

Widget get banner {
  return _flavorBanner(
    child: const LoginScreen(),
    show: kDebugMode,
  );
}
