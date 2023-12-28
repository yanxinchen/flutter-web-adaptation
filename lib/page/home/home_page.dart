import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xiaozhi/page/router_config.dart';

/// 主页面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(RouterConfigs.detailPage),
          child: const Text('Go to the Details screen'),
        ),
      ),
    );
  }
}
