import 'dart:async';

class Constants {
  static bool isLogin = false;

  static String token = "";

  static const String map_key = "";

  static  String? fcmToken = "";

  //refresh token
  static Future<void> updateToken() async {
    //http request to get the token..
  }

  static Future<void> startTokenUpdater() async {
    Timer.periodic(const Duration(seconds: 20), (timer) {
      updateToken();
      //update the token every 20 seconds
    });
  }
}

//levels of security and how to make it :
//high level sec. ----> RSA  (there's packages in flutter for RSA encryption
//mid level sec. ----> refresh token (from backend and frontend)
//low level sec. ----> token

//RSA : PEER TEXT ======KEY=======> CYPHER TEXT
