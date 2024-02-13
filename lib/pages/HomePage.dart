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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(page: 'home'),
          Expanded(
            child: Container(
              color: Colors.grey.shade100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 96),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Track your Expenses to Save Money",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 76,
                                  fontWeight: FontWeight.w900,
                                  height: 1.2),
                            ),
                            Text(
                              'Helps you to organize your income and expenses',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 18, height: 2),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ColorButton(),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '— Web, iOs and Android',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                        Expanded(
                            child: Container(
                          child: Image(
                            image: AssetImage('../../assets/home.png'),
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      // body: Center(child: Text("Home Page"),),
    );
  }
}
