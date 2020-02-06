import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'cadastro.dart';
import 'telas/configuracoes.dart';
void main() => runApp(MaterialApp(
  home: Configuracoes(),
  theme: ThemeData(
      primaryColor:Color(0xff075E54),
      accentColor: Color(0xff25D366),
  ),
  //initialRoute: "/",
  //onGenerateRoute: RouteGenerator.generateRoute,
  //debugShowCheckedModeBanner: false,

));