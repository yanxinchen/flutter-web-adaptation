import 'package:get/get.dart';

import 'global_controller.dart';

/// 这里初始化全局的
class AppControllerBindingConfig extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GlobalController());
  }
}
