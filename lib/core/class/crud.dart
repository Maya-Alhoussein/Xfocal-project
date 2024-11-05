import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'check_internet.dart';
import 'status_request.dart';

// a class to check the internet when the app starts
class Crud {
  Future<Either<StatusRequest, Map>> postData(
      String link, Map body, Map<String, String> headers) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(link),
            body: jsonEncode(body), headers: headers);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print(responseBody);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverFailure);
    }
  }


}
