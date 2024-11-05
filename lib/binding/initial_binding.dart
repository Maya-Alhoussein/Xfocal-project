import 'package:get/get.dart';

import '../core/class/crud.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    // Get.put(ProductsController());
  }
}


//when the app starts this class gonna bind (Crud , Home controller) to the app and run them.