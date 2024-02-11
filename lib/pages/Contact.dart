import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:web_app/Components/Header.dart';
import 'package:web_app/pages/About.dart';
import 'package:web_app/pages/HomePage.dart';
import 'package:web_app/pages/Services.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Header(),
        Expanded(
          child: Container(
            color: Colors.grey.shade100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Contact Page", style: TextStyle(fontSize: 40),),)

              ],),),
        )
      ],),
      // body: Center(child: Text("Home Page"),),


    );
  }
}
