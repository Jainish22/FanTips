import 'dart:convert';
import 'dart:developer';

import 'package:fantips/Model/Matches_Model/ExpertsModel.dart';
import 'package:http/http.dart' as http;

class ExpertService {
  static Future<Expert?> getExpert({required String value}) async {
    print("{=====}");
    try {
      final url = Uri.parse("https://api.freefantasy.in/tips/tipsters?offset=0&limit=20");
      print("----------445645-----${url}");
      final response = await http.post(url);
      log("hello444${response.body}");
      if (response.statusCode == 200) {
        log("Api Response4 ===>${response.body}");

        final Expert record = Expert.fromJson(jsonDecode(response.body));
        return record;
      }
    } catch (e, st) {
      log("Error==>$e ,$st");
    } finally {}
  }
}
