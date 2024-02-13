import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:web_app/Components/Header.dart';
import 'package:web_app/constants/constants.dart';


class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: mainColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Header(page: 'services',),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                      Image(image: AssetImage('../../assets/services.png', ),height: 500,)
                ],
              ),
            )
          ],
        ),
      ),
      // body: Center(child: Text("Home Page"),),
    );

  }
}
