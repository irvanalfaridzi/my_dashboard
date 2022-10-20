part of 'pages.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MobileDashboardBody(),
      tabletBody: TabletDashboardBody(),
      desktopBody: DesktopDashboardBody(),
    );
  }
}
