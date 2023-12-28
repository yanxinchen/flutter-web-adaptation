import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xiaozhi/page/unfond/unfind_page.dart';
import 'bindings/app_controller_binding_config.dart';
import 'page/router_config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        unknownRoute: GetPage(
            name: RouterConfigs.unFindPage, page: () => const UnFindPage()),
        routingCallback: (routing) {
          if (routing?.current == RouterConfigs.unFindPage) {
            /// 路由到异常页面处理
          }
        },
        /// 初始化所有的Binding
        initialBinding: AppControllerBindingConfig(),
        initialRoute: RouterConfigs.homePage,
        getPages: RouterConfigs.routes);
  }
}
