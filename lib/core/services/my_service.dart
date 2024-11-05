import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyService extends GetxService {
  static late SharedPreferences sharedPreferences;


  Future<String?> getFcmToken() async {
    String? fcmToken = await FirebaseMessaging.instance.getToken();
    print("============> my token is : $fcmToken");
    return fcmToken;
  }

  Future<MyService> init() async {
    getFcmToken();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialService() async {
  await Get.putAsync(() => MyService().init());
}

//after the app starts and we checked the internet through initial binding class .. now we we want to initialize the variables in shared preferences
//through the MyService class (we call all the method we want to run when tha app starts in class main )
