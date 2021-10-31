import 'package:ecommerce/core/view_model/control_view_model.dart';
import 'package:ecommerce/core/view_model/home_view_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // Get.lazyPut(() => AuthViewModel());
    Get.lazyPut<ControlViewModel>(() => ControlViewModel());

    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
  }

}