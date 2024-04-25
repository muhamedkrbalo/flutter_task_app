import 'package:flutter/material.dart';
import 'package:flutter_task_app/features/home/presentation/views/details_category.dart';
import 'package:flutter_task_app/features/home/presentation/views/home_screen.dart';
import 'package:flutter_task_app/features/home/presentation/views/sub_category_screen.dart';


class AppRouters {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    dynamic args;
    if (settings.arguments != null) args = settings.arguments;
    switch (settings.name) {

      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        ); 
         case SubCategoryScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const SubCategoryScreen(),
        ); 
         case DetailsCategoryScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const DetailsCategoryScreen(),
        ); 
      default:
        return null;
    }
  }
}