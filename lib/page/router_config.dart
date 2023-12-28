import 'package:get/get.dart';
import 'package:xiaozhi/page/detail/detail_page.dart';
import 'package:xiaozhi/page/home/home_page.dart';
import 'package:xiaozhi/page/unfond/unfind_page.dart';

import 'home/home_page_controll.dart';

/// 页面路由配置 需要统一native和web的路径
class RouterConfigs {
  static const String homePage = "/";
  static const String detailPage = "/detail";
  static const String unFindPage = "/unFind";

  static const Transition transition = Transition.rightToLeft;

  static List<GetPage> routes = [
    GetPage(
        name: homePage,
        page: () => const HomePage(),
        /// 这里直接配置 页面controller，方便统一管理和查看
        binding: BindingsBuilder(() => Get.lazyPut(() => HomePageController())),
        transition: transition),
    GetPage(
        name: detailPage,
        page: () => DetailsPage(),
        transition: transition),
    GetPage(
        name: homePage, page: () => const UnFindPage(), transition: transition),
  ];
}
