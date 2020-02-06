import 'package:flutter/material.dart';
import 'login.dart';
class RouteGenerator{
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch (settings.name){
      case '/': return MaterialPageRoute(
          builder:(context){
            return Login();
          }
      );
    }
  }
}