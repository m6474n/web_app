import 'package:flutter/material.dart';

import 'package:web_app/Components/Header.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(children: [Header(page: "about",),
        Expanded(
          child: Container(
            color: Colors.grey.shade100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("About Page", style: TextStyle(fontSize: 40),),)

              ],),),
        )
      ],),
      // body: Center(child: Text("Home Page"),),


    );
  }
}
