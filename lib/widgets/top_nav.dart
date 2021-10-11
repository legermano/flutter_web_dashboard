import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart' as style;
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: !ResponsiveWidget.isSmallScreen(context) ?
      Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 14),
            child: Image.asset(
              "icons/logo.png",
              width: 28),
          )
        ],
      ) :
      IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          key.currentState?.openDrawer();
        },
      ),
    elevation: 0,
    title: Row(
      children: [
        Visibility(
          child: CustomText(
            text: "Dash",
            color: style.lightGrey,
            size: 20,
            weight: FontWeight.bold,
          )
        ),
        Expanded(
          child: Container(),
        ),
        IconButton(
          icon: Icon(
            Icons.settings,
            color: style.dark.withOpacity(0.7),
          ),
          onPressed: (){},
        ),
        Stack(
          children: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: style.dark.withOpacity(0.7)
              ),
              onPressed: (){},
            ),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: style.active,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: style.light,
                    width: 2
                  )
                ),
              ),
            )
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: style.lightGrey,
        ),
        const SizedBox(
          width: 24,
        ),
        CustomText(
          text: "Lucas Germano",
          color: style.lightGrey,
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: style.light,
              child: Icon(
                Icons.person_outline,
                color: style.dark
              ),
            ),
          ),
        )
      ],
    ),
    iconTheme: IconThemeData(
      color: style.dark
    ),
    backgroundColor: Colors.transparent,
  );
}