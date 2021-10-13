import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart' as style;
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final Color? topColor;
  final bool isActive;
  final VoidCallback onTap;

  const InfoCardSmall({
    Key? key,
    required this.title,
    required this.value,
    required this.onTap,
    this.isActive = false,
    this.topColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? style.active : style.lightGrey,
              width: .5
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                weight: FontWeight.w300,
                color: isActive ? style.active : style.lightGrey,
              ),
              CustomText(
                text: value,
                size: 24,
                weight: FontWeight.bold,
                color: isActive ? style.active : style.lightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}