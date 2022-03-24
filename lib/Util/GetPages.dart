import 'package:fantips/Screens/Home/Home.dart';
import 'package:fantips/Screens/Home/HomeNews.dart';
import 'package:get/get.dart';

class Routes {
  static final routes = [
    GetPage(name: '/home', page: () => const Home()),
    GetPage(name: '/news', page: () => const HomeNews()),
  ];
}
