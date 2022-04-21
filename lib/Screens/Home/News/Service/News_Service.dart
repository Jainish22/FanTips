import 'dart:convert';
import 'dart:developer';

import 'package:fantips/Model/NewsModel.dart';
import 'package:http/http.dart' as http;

class NewsService {
  static Future<News?> getNews({ required String value}) async {
    print("{=====}");
    try {
      final url =
      Uri.parse("https://api.freefantasy.in/tips/getNewsList?offset=0&limit=20");
      print("---------------${url}");
      // final body = {
      //   "searchText": value,
      //   "pageIndex": 0,
      //   "limit": 20,
      //   "returnQueryCount": true
      // };
      //final headers = {"Content-Type": "application/json"};
      final response = await http.post(url,/*body: jsonEncode(body),headers: headers*/);
      log("hello4${response.body}");
      if (response.statusCode == 200) {
        log("Api Response4 ===>${response.body}");

        final News record = News.fromJson(jsonDecode(response.body));
        return record;
      }
    } catch (e , st) {
      log("Error==>$e ,$st");
    } finally {}
  }
}
