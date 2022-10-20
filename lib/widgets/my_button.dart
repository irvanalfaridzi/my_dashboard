part of 'widgets.dart';

class MyMenu extends StatelessWidget {
  final IconData menuIcon;
  final String menuTitle;
  final Function onTap;
  final bool isSelected;
  const MyMenu({
    Key? key,
    required this.menuIcon,
    required this.menuTitle,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isSelected ? mainColor.withOpacity(0.1) : Colors.transparent,
      ),
      child: ListTile(
        onTap: () {
          onTap();
        },
        selected: isSelected,
        leading: Icon(
          menuIcon,
        ),
        title: Text(
          menuTitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
