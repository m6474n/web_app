import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:web_app/Components/Header.dart';
import 'package:web_app/constants/constants.dart';
import 'package:web_app/pages/About.dart';
import 'package:web_app/pages/Contact.dart';
import 'package:web_app/pages/HomePage.dart';

import '../Components/buttons/Button1.dart';

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
          children: [
            Header(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 128, vertical: 38),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(child: Text('Service Page', style: TextStyle(fontSize: 40),),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // body: Center(child: Text("Home Page"),),
    );

  }
}
