part of 'widgets.dart';

class DesktopBody extends StatelessWidget {
  final bool isDesktop;
  final bool isTablet;
  const DesktopBody({
    Key? key,
    this.isDesktop = true,
    this.isTablet = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // widgets bar
        CardWidget(
          isDesktop: isDesktop,
          isTablet: isTablet,
        ),
        gapHeight20,

        /// big widget
        // first row
        FirstRow(
          isDesktop: isDesktop,
        ),

        gapHeight20,

        // second row
        SecondRow(
          isDesktop: isDesktop,
        ),

        gapHeight20,

        // bottombar
        MyBottomBar(
          isDesktop: isDesktop,
        ),
      ],
    );
  }
}
