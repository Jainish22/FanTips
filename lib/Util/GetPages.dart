import 'package:fantips/Screens/Home/Home.dart';
import 'package:get/get.dart';

import '../Screens/Home/HomeNews.dart';

class Routes {
  static final routes = [
    GetPage(name: '/home', page: () => const Home()),
    GetPage(name: '/news', page: () => const HomeNews()),
  ];
}
