import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../app.dart';
import '../class/flavors_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Flavor.appFlavor = Flavors.production;
  await Firebase.initializeApp();

  runApp(const App());
}
