import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:web_app/Components/Header.dart';
import 'package:web_app/Components/buttons/Button1.dart';
import 'package:web_app/pages/About.dart';
import 'package:web_app/pages/Contact.dart';
import 'package:web_app/pages/Services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 68.0, vertical: 38),
        child: Column(
          children: [
            Header(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Center(child: Text('Home Page', style: TextStyle(fontSize: 40),),)
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
