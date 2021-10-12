import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {

  // Instance to access the controller from anywhere
  static NavigationController instance = Get.find();

  // Key to know which navigator needs to change
  final GlobalKey<NavigatorState> navigationKey = GlobalKey();

  // Change the route
  Future<dynamic> navigateTo(String routeName) {
    return navigationKey.currentState!.pushNamed(routeName);
  }

  // Go back to the previous route
  goBack() => navigationKey.currentState!.pop();
}