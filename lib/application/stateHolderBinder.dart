

import 'package:ecommerce/presentation/stateHolders/mainBottomNavController.dart';
import 'package:get/get.dart';

class StateHolderBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
  }
}