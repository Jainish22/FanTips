import 'package:fantips/Screens/Home/Home.dart';
import 'package:fantips/Screens/Home/HomeNews.dart';
import 'package:fantips/Screens/IPL/Ipl.dart';
import 'package:fantips/Screens/Matches/Matches.dart';
import 'package:get/get.dart';

class Routes {
  static final routes = [
    GetPage(name: '/home', page: () => const Home()),
    GetPage(name: '/news', page: () => const HomeNews()),
    GetPage(name: '/matches', page: () => const Matches()),
    GetPage(name: '/ipl', page: () => const Ipl()),
  ];
}
