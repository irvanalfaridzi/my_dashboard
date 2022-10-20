part of 'widgets.dart';

class FirstRow extends StatelessWidget {
  final bool isDummyMode;
  final bool isDesktop;
  const FirstRow({
    Key? key,
    this.isDummyMode = false,
    this.isDesktop = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDummyMode
        ? dummyGraphicChart(context)
        : SizedBox(
            width: double.infinity,
            height: 400,
            child: isDesktop
                ? Row(
                    children: _body(isDesktop),
                  )
                : Column(
                    children: _body(isDesktop),
                  ),
          );
  }
}

List<Widget> _body(bool isDesktop) => [
      const MyLineChartCard(),
      isDesktop ? gapWidth20 : const SizedBox(),
      isDesktop ? const MyCarouselImageCard() : const SizedBox(),
    ];

class SecondRow extends StatelessWidget {
  final bool isDesktop;
  const SecondRow({
    Key? key,
    this.isDesktop = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDesktop
        ? SizedBox(
            width: double.infinity,
            height: 400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _salesOverviewWidget(2),
                gapWidth20,
                _categoriesWidget()
              ],
            ),
          )
        : Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: Column(
                    children: [
                      _salesOverviewWidget(1),
                    ],
                  )),
              gapHeight16,
              SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: Column(
                    children: [
                      _categoriesWidget(),
                    ],
                  )),
            ],
          );
  }

  BaseWhiteCard _categoriesWidget() {
    return BaseWhiteCard(
      flex: 1,
      height: 350,
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Categories',
              style: bold14Black,
            ),
          ),
          gapHeight16,
          MyCategoriesItem(
            icon: Icons.phone_android,
            title: 'Devices',
            subTitle: "250 in stock, ",
            mark: "246+ sold",
            onTap: () {},
          ),
          MyCategoriesItem(
            icon: Icons.card_membership,
            title: 'Tickets',
            subTitle: "123 in closed, ",
            mark: "15 open",
            onTap: () {},
          ),
          MyCategoriesItem(
            icon: Icons.bug_report_sharp,
            title: 'Error logs',
            subTitle: "1 is active, ",
            mark: "40 closed",
            onTap: () {},
          ),
          MyCategoriesItem(
            icon: Icons.emoji_emotions,
            title: 'Happy users',
            subTitle: "+ 430 ",
            mark: "",
            onTap: () {},
          )
        ],
      ),
    );
  }

  BaseWhiteCard _salesOverviewWidget(int flex) {
    return BaseWhiteCard(
      flex: flex,
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Sales Overview',
              style: bold14Black,
            ),
          ),
          gapHeight8,
          MySalesItem(
            flagsCode: FlagsCode.US,
            country: "United States",
            sales: "2500",
            value: "\$230,900",
            bounce: "29.9%",
          ),
          MySalesItem(
            flagsCode: FlagsCode.DE,
            country: "Germany",
            sales: "3900",
            value: "\$440,900",
            bounce: "40.22%",
          ),
          MySalesItem(
            flagsCode: FlagsCode.FR,
            country: "France",
            sales: "1400",
            value: "\$190,700",
            bounce: "23.44%",
          ),
          MySalesItem(
            flagsCode: FlagsCode.BR,
            country: "Brazil",
            sales: "562",
            value: "\$143,960",
            bounce: "32.14%",
          ),
          MySalesItem(
            flagsCode: FlagsCode.CN,
            country: "China",
            sales: "897",
            value: "\$378,960",
            bounce: "56.14%",
          ),
        ],
      ),
    );
  }
}

SizedBox dummyGraphicChart(BuildContext context) {
  return SizedBox(
    width: getDeviceWidth(context),
    height: 400,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        DummyContainer(
          isExpanded: true,
          flex: 2,
        ),
        SizedBox(width: 20),
        DummyContainer(
          isExpanded: true,
          flex: 1,
        ),
      ],
    ),
  );
}
