import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart' as style;
import 'package:flutter_web_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,6),
            color: style.lightGrey.withOpacity(.1),
            blurRadius: 12
          )
        ],
        border: Border.all(
          color: style.lightGrey,
          width: .5
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "Revenue Chart",
                  size: 20,
                  weight: FontWeight.bold,
                  color: style.lightGrey,
                ),
                SizedBox(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                )
              ],
            ),
          ),
          Container(
            width: 120,
            height: 1,
            color: style.lightGrey,
          ),
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    RevenueInfo(
                      title: "Today's revenue",
                      amount: "23"
                    ),
                    RevenueInfo(
                      title: "Last 7 days",
                      amount: "150"
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    RevenueInfo(
                      title: "Last 30 days",
                      amount: "1,203"
                    ),
                    RevenueInfo(
                      title: "Last 12 months",
                      amount: "4,321"
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}