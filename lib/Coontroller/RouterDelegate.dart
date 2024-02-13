import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:web_app/Services/routeNames.dart';

class AppRouterDelegate extends GetDelegate{


  @override
  Widget build(BuildContext context) {

    return Navigator(
      key: Get.key,
      onPopPage: (route, result) => route.didPop(result),
      pages: currentConfiguration != null
          ? [currentConfiguration!.currentPage!]
          : [GetNavConfig.fromRoute(Routes.home)!.currentPage!],
    );
  }


}