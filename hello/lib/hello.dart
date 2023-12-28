import 'hello_platform_interface.dart';

class Hello {
  Future<String?> getPlatformVersion() {
    return HelloPlatform.instance.getPlatformVersion();
  }

  bool callHello() {
    return HelloPlatform.instance.callHello();
  }

  Future<bool> callHelloAsync() async {
    return HelloPlatform.instance.callHelloAsync();
  }

  void bindJS() {
    return HelloPlatform.instance.bindJS();
  }

  void callJs() {
    return HelloPlatform.instance.callJs();
  }
}
