import 'package:flutter/material.dart';
import 'package:my_dashboard/pages/pages.dart';
import 'package:my_dashboard/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.grey,
          selectedColor: blackColor,
          selectedTileColor: greyColor,
        ),
      ),
      home: const DashboardPage(),
    );
  }
}
