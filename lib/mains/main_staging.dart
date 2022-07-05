import 'package:flutter/material.dart';
import '../app.dart';
import '../class/flavors_controller.dart';

void main() {
  Flavor.appFlavor = Flavors.staging;
  runApp(const App());
}
