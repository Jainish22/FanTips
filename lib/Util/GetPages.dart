import 'package:fantips/Screens/Experts/ExperInfo/Expertinfo.dart';
import 'package:fantips/Screens/Experts/Experts.dart';
import 'package:fantips/Screens/Home/Home.dart';
import 'package:fantips/Screens/Home/News/HomeNews.dart';
import 'package:fantips/Screens/IPL/Ipl.dart';
import 'package:fantips/Screens/Matches/Matches.dart';
import 'package:fantips/Screens/Matches/Upcoming/UpcomingMatches/UpcomingMatches.dart';
import 'package:get/get.dart';

import '../Screens/Experts/search.dart';
import '../Screens/More/More.dart';

class Routes {
  static final routes = [
    GetPage(name: '/home', page: () => Home()),
    GetPage(name: '/news', page: () => HomeNews()),
    GetPage(name: '/matches', page: () => const Matches()),
    GetPage(name: '/ipl', page: () => const Ipl()),
    GetPage(name: '/expert', page: () => const Experts()),
    GetPage(name: '/more', page: () => const More()),
    GetPage(name: '/search', page: () => const Search()),
    GetPage(name: '/expertinfo', page: () => const ExpertInfo()),
    GetPage(name: '/upcomingmatches', page: () => const UpcomingMatches()),

  ];
}
