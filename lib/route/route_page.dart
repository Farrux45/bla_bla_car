import 'package:bla_bla_app/screens/code_sms.dart';
import 'package:bla_bla_app/screens/home_page.dart';
import 'package:bla_bla_app/screens/phone_number_page.dart';
import 'package:bla_bla_app/screens/profile_page.dart';
import 'package:bla_bla_app/screens/search_travel.dart';
import 'package:bla_bla_app/screens/second_home_page.dart';
import 'package:flutter/material.dart';

class MyRouter {
  Route? getRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case '/second':
        return MaterialPageRoute(builder: (_) => const SecondPageHome());
      case '/phone':
        return MaterialPageRoute(builder: (_) => const PhoneNumberPage());
      case '/sms':
        return MaterialPageRoute(builder: (_) => const CodeFromSmsPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case '/search':
        return MaterialPageRoute(builder: (_) => SearchTravel());
    }
  }
}
