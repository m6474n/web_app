import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/Services/Routes.dart';
import 'package:web_app/constants/constants.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 68),
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
                      Get.toNamed(AppRoutes.home);
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.services);
                    },
                    child: Text(
                      "Services",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.about);
                    },
                    child: Text(
                      "About",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.contact);
                    },
                    child: Text(
                      "Contact US",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
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
          )),
        ],
      ),
    );
  }
}
