import 'package:flutter/material.dart';
import 'package:web_app/Services/Routes.dart';
import 'package:web_app/pages/About.dart';
import 'package:web_app/pages/Contact.dart';
import 'package:web_app/pages/HomePage.dart';
import 'package:get/get.dart';
import 'package:web_app/pages/Services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute:AppRoutes.home,
        getPages: AppRoutes.routes,
      home: HomePage(),
    );
  }
}
