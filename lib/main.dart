import 'package:flutter/material.dart';
import 'package:pipo_app_launch/router/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pipo App',
      initialRoute: '/Inicio',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
