// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;
import 'dart:js' as js;
import 'dart:js_util' as js_util;

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'hello_platform_interface.dart';

/// A web implementation of the HelloPlatform of the Hello plugin.
class HelloWeb extends HelloPlatform {
  /// Constructs a HelloWeb
  HelloWeb();

  static void registerWith(Registrar registrar) {
    HelloPlatform.instance = HelloWeb();
    final MethodChannel channel = MethodChannel(
      'hello',
      const StandardMethodCodec(),
      registrar,
    );

    channel.setMethodCallHandler(HelloPlatform.instance.handleMethodCall);
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }

  @override
  bool callHello() {
    bool result = js.context.callMethod('bindHello', ['js收到flutter同步请求']);
    return result;
  }

  @override
  Future<bool> callHelloAsync() async {
    var result =
        js_util.callMethod(html.window, 'bindHelloAsync', ['js收到flutter异步请求']);
    bool returnObj = await js_util.promiseToFuture<bool>(result);
    return returnObj;
  }

  @override
  void callJs() {
    js.context.callMethod("test");
  }

  /// js 调用 dart
  @override
  void bindJS() {
    /*js_util.setProperty(html.window, "callHelloToDart", js.allowInterop((args) {
      print('$args');
      return '$args';
    }));*/
    js.context["add"] = add;
  }

  /// js 调用 dart 的add方法
  int add(int a, int b) {
    return a + b;
  }
}
