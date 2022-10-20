part of 'pages.dart';

class MobileDashboardBody extends StatelessWidget {
  const MobileDashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DesktopBody(
      isDesktop: false,
      isTablet: false,
    );
  }
}
