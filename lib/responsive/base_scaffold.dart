import "package:flutter/material.dart";
import 'package:my_dashboard/utils/scroll_behavior.dart';
import 'package:my_dashboard/utils/themes.dart';
import 'package:my_dashboard/widgets/widgets.dart';

class BaseScaffold extends StatefulWidget {
  final Widget child;
  final bool isDesktop;
  final bool isTablet;
  const BaseScaffold({
    Key? key,
    required this.child,
    this.isDesktop = true,
    this.isTablet = true,
  }) : super(key: key);

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  double widthMenu = 250 + 30;
  IconData iconMenu = Icons.menu;

  onMenuTap() {
    setState(() {
      widthMenu == 0 ? widthMenu = 250 + 30 : widthMenu = 0;
      widthMenu == 0 ? iconMenu = Icons.menu_open : iconMenu = Icons.menu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: SingleChildScrollView(
              primary: false,
              child: Stack(
                children: [
                  // background
                  Container(
                    width: double.infinity,
                    height: getDeviceHeight(context, size: 2.5),
                    color: mainColor,
                  ),
                  // body
                  Padding(
                    padding: EdgeInsets.only(
                      left: widget.isDesktop ? 310 : 30,
                      right: 30,
                      top: 25,
                      bottom: 25,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // topbar
                        MyTopBar(
                          isDesktop: widget.isDesktop,
                          isTablet: widget.isTablet,
                          onMenuTap: () {
                            onMenuTap();
                          },
                          menuIcon: iconMenu,
                        ),
                        gapHeight30,
                        widget.child,
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // side bar
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: widget.isDesktop ? 0 : -(widthMenu),
            child: const MySideBar(),
          )
        ],
      ),
    );
  }
}
