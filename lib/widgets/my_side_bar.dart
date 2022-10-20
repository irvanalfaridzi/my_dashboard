part of 'widgets.dart';

class MySideBar extends StatelessWidget {
  final bool isDummyMode;
  const MySideBar({
    Key? key,
    this.isDummyMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: getDeviceHeight(context) - 50,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            color: blackColor.withOpacity(0.2),
            offset: const Offset(0, 0),
            spreadRadius: 1,
          )
        ],
      ),
      child: isDummyMode
          ? const SizedBox()
          : Column(
              children: [
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(
                      Icons.airline_seat_flat_angled_rounded,
                      color: blackColor,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        "Template Dashboard",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                Expanded(
                    child: ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyMenu(
                          menuIcon: Icons.home,
                          menuTitle: "Dashboard",
                          isSelected: true,
                          onTap: () {
                            print("Dashboard");
                          },
                        ),
                        MyMenu(
                          menuIcon: Icons.calendar_month,
                          menuTitle: "Tables",
                          isSelected: false,
                          onTap: () {},
                        ),
                        MyMenu(
                          menuIcon: Icons.credit_card,
                          menuTitle: "Billing",
                          isSelected: false,
                          onTap: () {},
                        ),
                        MyMenu(
                          menuIcon: Icons.view_comfortable_outlined,
                          menuTitle: "Virtual Reality",
                          isSelected: false,
                          onTap: () {},
                        ),
                        MyMenu(
                          menuIcon: Icons.web,
                          menuTitle: "RTL",
                          isSelected: false,
                          onTap: () {},
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 18, top: 16, bottom: 8.0),
                          child: Text(
                            "ACCOUNT PAGE",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        MyMenu(
                          menuIcon: Icons.person,
                          menuTitle: "Profile",
                          isSelected: false,
                          onTap: () {},
                        ),
                        MyMenu(
                          menuIcon: Icons.login,
                          menuTitle: "Sign In",
                          isSelected: false,
                          onTap: () {},
                        ),
                        MyMenu(
                          menuIcon: Icons.logout,
                          menuTitle: "Sign Up",
                          isSelected: false,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                )),
              ],
            ),
    );
  }
}
