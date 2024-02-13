import 'package:get/get.dart';
import 'package:web_app/Services/routeNames.dart';
import 'package:web_app/pages/About.dart';
import 'package:web_app/pages/Contact.dart';
import 'package:web_app/pages/HomePage.dart';
import 'package:web_app/pages/Services.dart';

abstract class AppPages{


  static final routes = [
    GetPage(name: Routes.home, page: ()=>const HomePage()),
    GetPage(name: Routes.services, page: ()=>const ServicePage()),
    GetPage(name:Routes.about , page: ()=>const AboutPage()),
    GetPage(name: Routes.contact, page: ()=>const ContactPage()),



  ];






}