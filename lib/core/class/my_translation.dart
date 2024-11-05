import 'package:get/get.dart';

class MyTranslation extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    'en_Us' : {
      "hello" : "hello world"
    },
    'ar_SA' :{
      "hello" : "مرحبا بالعالم"
    }
  };

}