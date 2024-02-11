import 'package:get/get.dart';
import 'package:web_app/pages/About.dart';
import 'package:web_app/pages/Contact.dart';
import 'package:web_app/pages/HomePage.dart';
import 'package:web_app/pages/Services.dart';

class AppRoutes{
  static const home = '/';
  static const about = '/about';
  static const services = '/services';
  static const contact = '/contact';

  static final List<GetPage> routes = [
GetPage(name: home, page: ()=>const HomePage()),
GetPage(name: services, page: ()=>const ServicePage()),
GetPage(name:about , page: ()=>const AboutPage()),
GetPage(name: contact, page: ()=>const ContactPage()),



  ];






}