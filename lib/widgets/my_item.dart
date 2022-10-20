part of 'widgets.dart';

class MySalesItem extends StatelessWidget {
  final FlagsCode flagsCode;
  final String country;
  final String sales;
  final String value;
  final String bounce;
  const MySalesItem({
    Key? key,
    required this.flagsCode,
    required this.country,
    required this.sales,
    required this.value,
    required this.bounce,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        gapHeight8,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Flag.fromCode(
                    flagsCode,
                    height: 20,
                    width: 20,
                  ),
                  gapWidth20,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Country:',
                        style: regular12Grey,
                      ),
                      gapHeight4,
                      Text(
                        country,
                        style: bold14Black,
                      )
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sales:',
                    style: regular12Grey,
                  ),
                  gapHeight4,
                  Text(
                    sales,
                    style: bold14Black,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Value:',
                    style: regular12Grey,
                  ),
                  gapHeight4,
                  Text(
                    value,
                    style: bold14Black,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bounce:',
                    style: regular12Grey,
                  ),
                  gapHeight4,
                  Text(
                    bounce,
                    style: bold14Black,
                  )
                ],
              )
            ],
          ),
        ),
        gapHeight8,
        const Divider()
      ],
    );
  }
}

class MyCategoriesItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final String mark;
  final Function onTap;
  const MyCategoriesItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.mark,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap();
      },
      leading: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: blackColor,
        ),
        child: Center(
          child: Icon(
            icon,
            color: whiteColor,
          ),
        ),
      ),
      title: Text(
        title,
        style: bold14Black,
      ),
      subtitle: Text.rich(
        TextSpan(
          text: subTitle,
          style: regular14Grey,
          children: [
            TextSpan(
              text: mark,
              style: bold14Grey,
            ),
          ],
        ),
      ),
      trailing: const Icon(
        Icons.chevron_right_rounded,
        color: blackColor,
      ),
    );
  }
}
