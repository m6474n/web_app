import 'package:flutter/material.dart';

import 'package:web_app/Components/Header.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(children: [Header(page: 'contact',),
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
