import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kISWeb, kIsWeb;

import 'package:pipo_app_launch/ui/pages/page_404.dart';
import 'package:pipo_app_launch/ui/pages/main_benefits_page.dart';
import 'package:pipo_app_launch/ui/pages/main_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute( RouteSettings settings ) {
    
    switch( settings.name ){
      case '/Inicio':
        return _fadeRoute(MainPage(), '/Inicio');

      case '/Beneficios':
        return _fadeRoute(MainBenefitsPage(), '/Beneficios');

      default:
        return _fadeRoute(Page404(),'/404');
    }
  }

  static PageRoute _fadeRoute( Widget child, String routeName ) {

    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: ( _, __,___ ) => child,
      transitionDuration: Duration( milliseconds: 200 ),
      transitionsBuilder: ( _, animation, __, ___ ) =>
      (kIsWeb)
        ? FadeTransition(
            opacity: animation,
            child: child,
          )
        : CupertinoPageTransition(
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: __,
          linearTransition: true,
          child: child),
    );
  }
}