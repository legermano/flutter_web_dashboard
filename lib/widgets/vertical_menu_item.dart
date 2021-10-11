import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:flutter_web_dashboard/constants/style.dart' as style;

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  const VerticalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value ?
          menuController.onHover(itemName) :
          menuController.onHover("Not hovering");
      },
      child: Obx(() =>
        Container(
          color: menuController.isHovering(itemName) ?
            style.lightGrey.withOpacity(.1) :
            Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
                child: Container(
                  width: 3,
                  height: 72,
                  color: style.dark,
                ),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName),
                    ),
                    if(!menuController.isActive(itemName))
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: menuController.isHovering(itemName) ? style.dark : style.lightGrey,
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: style.dark,
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}