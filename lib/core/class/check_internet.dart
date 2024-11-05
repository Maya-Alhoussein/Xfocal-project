import 'dart:io';

checkInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}

//InternetAddress : come from io library (to check if there's internet)
//socketException : real time & Exception : request for one time (we want to keep check the internet in real time so we use socket)
//socket : real time stream of data
