import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xiaozhi/page/router_config.dart';

/// 主页面
class UnFindPage extends StatelessWidget {
  const UnFindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Not find')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(RouterConfigs.homePage),
          child: const Text('Go to the home screen'),
        ),
      ),
    );
  }
}