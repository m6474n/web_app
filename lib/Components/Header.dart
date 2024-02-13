import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:web_app/Components/buttons/Button1.dart';
import 'package:web_app/constants/constants.dart';

class Header extends StatelessWidget {
 final String page;
   Header({super.key, required this.page});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 70,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Text(
                'Site Logo',
                style: TextStyle(fontSize: 32),
              )),
          // Expanded(child: Container(width: MediaQuery.of(context).size.width*0.2,)),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
//                      Get.rootDelegate.toNamed(Routes.home);
// updateRoute(Routes.home);


                      GoRouter.of(context).go('/');
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: page == "home"? mainColor: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.rootDelegate.toNamed(Routes.services);
                      // updateRoute(Routes.services);
                      GoRouter.of(context).go('/services');
                    },
                    child: Text(
                      "Services",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: page == "services"? mainColor: Colors.black54,),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.rootDelegate.toNamed(Routes.about);
                      // updateRoute(Routes.about);
                      GoRouter.of(context).go('/about');
                    },
                    child: Text(
                      "About",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: page == "about"? mainColor: Colors.black54,),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.rootDelegate.toNamed(Routes.contact);
                      // updateRoute(Routes.contact);                    },
                      GoRouter.of(context).go('/contact');

                    },
                    child: Text(
                      "Contact US",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: page == "contact"? mainColor: Colors.black54,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
                children: [
                  Container(
                              alignment: Alignment.centerRight,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: mainColor),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                      child: Text(
                    'Request a demo',
                    style: TextStyle(color: mainColor, fontSize: 14),
                  )),
                              ),
                            ),
                  SizedBox(width: 12,),
            ColorButton()
                ],
              )),
        ],
      ),
    );
  }
}
