import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/hello.dart';
import 'package:xiaozhi/page/router_config.dart';

/// The details screen
class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});

  final _helloPlugin = Hello();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.offNamedUntil(RouterConfigs.homePage, (route) => false)
                // 调用js方法
                _helloPlugin.callHello();
              },
              child: const Text('调用web 同步接口'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () async {
                // Get.offNamedUntil(RouterConfigs.homePage, (route) => false)
                // 调用js方法
                _helloPlugin.callHelloAsync();
              },
              child: const Text('调用web 异步接口'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () async {
                // Get.offNamedUntil(RouterConfigs.homePage, (route) => false)
                showDialogFunction(context, "这个是flutter弹窗");
              },
              child: const Text('flutter 原生弹窗'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () async {
                // Get.offNamedUntil(RouterConfigs.homePage, (route) => false)
                // 绑定js
                _helloPlugin.bindJS();
                _helloPlugin.callJs();
              },
              child: const Text('bindJs 注册js方法'),
            ),
          ],
        ),
      ),
    );
  }

  /// showDialog
  showDialogFunction(BuildContext context, String str) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("提示"),
          content: Text(str),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("取消"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("确定")),
          ],
        );
      },
    );
  }
}
