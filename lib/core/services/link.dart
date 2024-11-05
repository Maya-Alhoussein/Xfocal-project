//this class to declare the url links for requests


import '../constants/constants.dart';

class AppLink {
  //remote address
  static String appRoot = "https://task.focal-x.com/";

  static String registerApi = 'https://task.focal-x.com/api/register';
  static String loginApi = 'https://task.focal-x.com/api/login';


  //without token
  Map<String, String> getHeader() {
    Map<String, String> mainHeader = {
      'content-type': 'application/json',
      'Accept': 'application/json',
      'X-Requested-With': 'XMLHttpRequest',
    };
    return mainHeader;
  }

  //with token
  Map<String, String> getHeaderToken() {
    Map<String, String> mainHeader = {
      'content-type': 'application/json',
      'Accept': 'application/json',
      'X-Requested-With': 'XMLHttpRequest',
      'Authorization': 'Bearer ${Constants.token}'
    };
    return mainHeader;
  }
}

//we use getHeaderToken when requests body needs token and we use getHeader when we don't have token in request body
