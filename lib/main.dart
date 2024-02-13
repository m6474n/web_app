import 'dart:developer';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_app/Services/Routes.dart';
import 'package:web_app/pages/About.dart';
import 'package:web_app/pages/Contact.dart';
import 'package:web_app/pages/HomePage.dart';
import 'package:get/get.dart';
import 'package:web_app/pages/Services.dart';

import 'Coontroller/RouterDelegate.dart';
import 'Services/routeNames.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      //   defaultTransition: Transition.circularReveal,
      // getPages: AppPages.routes,
      routerConfig: _router,

      // routerDelegate: AppRouterDelegate(),
      // routeInformationParser: GetInformationParser(),

    );
  }

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },),
        GoRoute(
          path: '/services',
          builder: (BuildContext context, GoRouterState state) {
            return const ServicePage();
          },
        ),
        GoRoute(
          path: '/about',
          builder: (BuildContext context, GoRouterState state) {
            return const AboutPage();
          },
        ),
        GoRoute(
          path: '/contact',
          builder: (BuildContext context, GoRouterState state) {
            return const ContactPage();
          },
        ),

    ],
  );
}
