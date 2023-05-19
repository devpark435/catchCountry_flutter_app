import 'dart:developer';

import 'package:dio/dio.dart';

final dio = Dio();

class FlagQuiz {
  void getFlagQuiz() async {
    try {
      final response = await dio.get(("http://petmily.duckdns.org/channel"),
          options: Options(
            headers: {
              // 'Authorization': 'Bearer $accessToken',
              // 'Content-Type': 'application/json'
            },
          ));
      if (response.statusCode == 200) {
        // final responseData = response.data;

        log('FlagQuiz Success');
      } else {
        throw Exception('Failed to load FlagQuizData');
      }
    } catch (e) {
      log("FlagQuiz Get Error : $e");
    }
  }
}
