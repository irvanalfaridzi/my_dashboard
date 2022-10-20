import 'package:flutter/material.dart';
import 'package:my_dashboard/utils/themes.dart';
import 'package:my_dashboard/widgets/widgets.dart';

List<Widget> listCardWidget(bool isDesktop) => [
      MyCardWidget(
        cardTitle: 'TODAY\'S MONEY',
        cardValue: '\$53,000',
        cardPercentage: "+55%",
        cardTime: "yesterday",
        cardColor: mainColor,
        cardIcon: Icons.monetization_on_outlined,
        isDesktop: isDesktop,
      ),
      gapWidth16,
      MyCardWidget(
        cardTitle: 'TODAY\'S USERS',
        cardValue: '2,300',
        cardPercentage: "+3%",
        cardTime: "last week",
        cardColor: Colors.red,
        cardIcon: Icons.supervised_user_circle_outlined,
        isDesktop: isDesktop,
      ),
      gapWidth16,
      MyCardWidget(
        cardTitle: 'NEW CLIENTS',
        cardValue: '+3,462',
        cardPercentage: "-2%",
        cardTime: "last quarter",
        cardColor: Colors.green,
        cardIcon: Icons.add_chart_outlined,
        isDesktop: isDesktop,
      ),
      gapWidth16,
      MyCardWidget(
        cardTitle: 'SALES',
        cardValue: '\$103,430',
        cardPercentage: "+5%",
        cardTime: "last month",
        cardTimeIndicator: "than",
        cardColor: Colors.orange,
        cardIcon: Icons.shopping_cart,
        isDesktop: isDesktop,
      ),
    ];
