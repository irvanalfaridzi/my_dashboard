part of 'widgets.dart';

class MyTopBar extends StatelessWidget {
  final bool isDummyMode;
  final bool isDesktop;
  final bool isTablet;
  final Function onMenuTap;
  final IconData menuIcon;

  const MyTopBar({
    Key? key,
    this.isDummyMode = false,
    this.isDesktop = true,
    this.isTablet = true,
    required this.onMenuTap,
    required this.menuIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDummyMode
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DummyContainer(width: 200, height: 40),
              Expanded(child: SizedBox()),
              DummyContainer(width: 400, height: 40),
            ],
          )
        : isTablet
            ? Row(
                children: [
                  _pageTitle(),
                  const Spacer(),
                  _serachBar(),
                  gapWidth16,
                  _signInButton(isTablet),
                  gapWidth8,
                  isDesktop ? const SizedBox() : _menuButton(),
                  _settingButton(),
                  _notifButton(),
                ],
              )
            : Column(
                children: [
                  _pageTitle(),
                  gapHeight16,
                  Row(
                    children: [
                      _serachBar(),
                      const Spacer(),
                      _signInButton(isTablet),
                      _menuButton(),
                      _settingButton(),
                      _notifButton(),
                    ],
                  )
                ],
              );
  }

  IconButton _menuButton() {
    return IconButton(
      onPressed: () {
        onMenuTap();
      },
      icon: Icon(
        menuIcon,
        color: whiteColor,
      ),
    );
  }

  IconButton _notifButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.notifications),
      color: whiteColor,
    );
  }

  IconButton _settingButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.settings),
      color: whiteColor,
    );
  }

  Widget _signInButton(bool isTablet) {
    return isTablet
        ? InkWell(
            onTap: () {},
            child: Row(
              children: const [
                Icon(
                  Icons.person,
                  color: whiteColor,
                ),
                SizedBox(width: 4),
                Text(
                  'Sign In',
                  style: regular14White,
                )
              ],
            ),
          )
        : IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            color: whiteColor,
          );
  }

  Expanded _serachBar() {
    return Expanded(
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: whiteColor,
        ),
        child: const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: strongGreyColor,
            ),
            hintText: "Type here...",
            hintStyle: regular14Grey,
            border: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Column _pageTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text(
              'Pages',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            Text(
              '  /  Dashboard',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: whiteColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        const Text(
          'Dashboard',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: whiteColor,
          ),
        ),
      ],
    );
  }
}
