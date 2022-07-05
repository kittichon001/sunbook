import 'package:get/get.dart';
import 'package:sunbook/screens/home_screen.dart';
import 'package:sunbook/screens/login_screen.dart';

List<GetPage> routeNav = [
  GetPage(name: '/home', page: () => const HomeScreen()),
  GetPage(name: '/login', page: () => const LoginScreen()),
];
