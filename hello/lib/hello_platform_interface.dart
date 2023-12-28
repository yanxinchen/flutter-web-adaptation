import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hello_method_channel.dart';

abstract class HelloPlatform extends PlatformInterface {
  /// Constructs a HelloPlatform.
  HelloPlatform() : super(token: _token);

  static final Object _token = Object();

  static HelloPlatform _instance = MethodChannelHello();

  /// The default instance of [HelloPlatform] to use.
  ///
  /// Defaults to [MethodChannelHello].
  static HelloPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HelloPlatform] when
  /// they register themselves.
  static set instance(HelloPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  bool callHello() {
    throw UnimplementedError('callHello() has not been implemented.');
  }

  Future<bool> callHelloAsync() async {
    throw UnimplementedError('callHelloAsync() has not been implemented.');
  }

  void bindJS() {
    throw UnimplementedError('bindJS() has not been implemented.');
  }

  void callJs() {
    throw UnimplementedError('callJs() has not been implemented.');
  }

  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'getPlatformVersion':
        return getPlatformVersion();
      case 'callHello':
        return callHello();
      case 'callHelloAsync':
        return callHelloAsync();
      default:
        throw PlatformException(
          code: 'Unimplemented',
          details:
          'flutter_barcode_sdk for web doesn\'t implement \'${call.method}\'',
        );
    }
  }


}
