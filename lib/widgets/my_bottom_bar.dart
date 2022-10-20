part of 'widgets.dart';

class MyBottomBar extends StatelessWidget {
  final bool isDummyMode;
  final bool isDesktop;
  const MyBottomBar({
    Key? key,
    this.isDummyMode = false,
    this.isDesktop = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDummyMode
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DummyContainer(width: 300, height: 40),
              Expanded(child: SizedBox()),
              DummyContainer(width: 400, height: 40),
            ],
          )
        : isDesktop
            ? Row(
                children: [
                  _developerName(),
                  const Spacer(),
                  Expanded(child: _bottomMenu(MainAxisAlignment.end)),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _developerName(),
                  gapHeight8,
                  _bottomMenu(MainAxisAlignment.center)
                ],
              );
  }

  Row _bottomMenu(MainAxisAlignment mainAxisAlignment) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Creative Tim',
            style: regular14Grey,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'About Us',
            style: regular14Grey,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Blog',
            style: regular14Grey,
          ),
        ),
      ],
    );
  }

  Widget _developerName() {
    return const Text.rich(
      TextSpan(
        text: "© 2022, by ",
        style: regular14Grey,
        children: [
          TextSpan(
            text: "Alfaridzi",
            style: bold14Black,
          ),
        ],
      ),
    );
  }
}
