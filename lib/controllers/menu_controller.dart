import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart' as style;
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {

  // Instance to access the controller from anywhere
  static MenuController instance = Get.find();

  // Current active item
  // Overview page is the default page
  var activeItem = overViewPageRouter.obs;

  // Current hover item
  var hoverItem = "".obs;

  // Changes the active item variable to the new one
  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  // Changes the hover item variable to the new one
  onHover(String itemName) {
    if(!isActive(itemName)) hoverItem.value = itemName;
  }

  // Check if the item is active
  isActive(String itemName) => activeItem.value == itemName;

  // Check if the item is been hovered
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overViewPageRouter:
        return _customIcon(Icons.trending_up, itemName);
      case driversPageRouter:
        return _customIcon(Icons.drive_eta, itemName);
      case clientsPageRouter:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageRouter:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    // If the item is actived, return with a color indication
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: style.dark
      );
    }

    // Return the normal item, if is hovered, indicate that
    return Icon(
      icon,
      color: isHovering(itemName) ? style.dark : style.lightGrey,
    );
  }
}