part of 'widgets.dart';

class BaseWhiteCard extends StatelessWidget {
  final int flex;
  final double height;
  final Widget child;
  final EdgeInsetsGeometry padding;
  const BaseWhiteCard({
    Key? key,
    this.flex = 1,
    this.height = 400,
    this.padding = const EdgeInsets.all(20),
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        width: double.infinity,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: child,
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final bool isDummyMode;
  final bool isDesktop;
  final bool isTablet;
  const CardWidget({
    Key? key,
    this.isDummyMode = false,
    this.isDesktop = true,
    this.isTablet = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDummyMode
        ? SizedBox(
            width: getDeviceWidth(context),
            height: 140,
            child: Row(
              children: const [
                DummyContainer(isExpanded: true, flex: 8),
                Spacer(flex: 1),
                DummyContainer(isExpanded: true, flex: 8),
                Spacer(flex: 1),
                DummyContainer(isExpanded: true, flex: 8),
                Spacer(flex: 1),
                DummyContainer(isExpanded: true, flex: 8),
              ],
            ),
          )
        : isDesktop
            ? Row(
                children: listCardWidget(isDesktop),
              )
            : isTablet
                ? Column(
                    children: [
                      Row(
                        children: [
                          listCardWidget(isTablet)[0],
                          listCardWidget(isTablet)[1],
                          listCardWidget(isTablet)[2],
                        ],
                      ),
                      gapHeight16,
                      Row(
                        children: [
                          listCardWidget(isTablet)[4],
                          listCardWidget(isTablet)[5],
                          listCardWidget(isTablet)[6],
                        ],
                      )
                    ],
                  )
                : Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    direction: Axis.horizontal,
                    children: listCardWidget(isDesktop),
                  );
  }
}

class MyCardWidget extends StatelessWidget {
  final String cardTitle;
  final String cardValue;
  final String cardPercentage;
  final String cardTime;
  final String cardTimeIndicator;
  final Color cardColor;
  final IconData cardIcon;
  final bool isDesktop;
  const MyCardWidget({
    Key? key,
    required this.cardTitle,
    required this.cardValue,
    required this.cardPercentage,
    required this.cardTime,
    this.cardTimeIndicator = "since",
    required this.cardColor,
    required this.cardIcon,
    this.isDesktop = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDesktop
        ? Expanded(
            child: _body(),
          )
        : _body();
  }

  Container _body() {
    return Container(
      height: 140,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardTitle,
                  style: bold14Grey,
                ),
                gapHeight8,
                Text(
                  cardValue,
                  style: bold20Black,
                ),
                const Spacer(),
                Text.rich(
                  TextSpan(
                    text: cardPercentage,
                    style:
                        cardPercentage.contains("-") ? bold14Red : bold14Green,
                    children: [
                      TextSpan(
                        text: " $cardTimeIndicator",
                        style: regular14Grey,
                      ),
                      TextSpan(
                        text: " $cardTime",
                        style: regular14Grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: cardColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                cardIcon,
                color: whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyLineChartCard extends StatelessWidget {
  const MyLineChartCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWhiteCard(
      flex: 2,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sales Overview',
            style: bold14Black,
          ),
          gapHeight8,
          Row(
            children: const [
              Icon(
                Icons.arrow_upward,
                color: Colors.green,
              ),
              Text.rich(
                TextSpan(
                  text: " 4% ",
                  style: bold14Grey,
                  children: [
                    TextSpan(
                      text: "more ",
                      style: bold14Grey,
                    ),
                    TextSpan(
                      text: "in 2021",
                      style: regular14Grey,
                    ),
                  ],
                ),
              )
            ],
          ),
          gapHeight8,
          SfCartesianChart(
            series: <ChartSeries>[
              SplineSeries<ChartData, int>(
                dataSource: chartData,
                // Type of spline
                splineType: SplineType.natural,
                cardinalSplineTension: 1,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyCarouselImageCard extends StatelessWidget {
  const MyCarouselImageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    return Expanded(
      child: Stack(
        children: [
          ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: CarouselSlider(
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 8,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (value, x) {},
                scrollDirection: Axis.horizontal,
              ),
              items: listImage.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(
                            i,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    buttonCarouselController.previousPage();
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    color: greyColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    buttonCarouselController.nextPage();
                  },
                  icon: const Icon(
                    Icons.chevron_right,
                    color: greyColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
