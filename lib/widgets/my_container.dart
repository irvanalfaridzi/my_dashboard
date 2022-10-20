part of 'widgets.dart';

class DummyContainer extends StatelessWidget {
  final double width;
  final double height;
  final bool isExpanded;
  final int flex;
  const DummyContainer({
    Key? key,
    this.width = 0,
    this.height = 0,
    this.isExpanded = false,
    this.flex = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? Expanded(
            flex: flex,
            child: Container(
              // height: height == 0 ? 40 : height,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          )
        : Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(16),
            ),
          );
  }
}
