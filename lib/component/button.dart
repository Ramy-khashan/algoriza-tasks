import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  final Size size;
  final String head;
  final VoidCallback onTap;
  final double height;
  final double width;
  final double radius;
  final double textSize;
  final Color textColor;
  final Color color;
  final bool isBorder;
  final bool isWithIcon;
  const ButtonItem(
      {Key? key,
      this.isWithIcon = false,
      required this.size,
      required this.head,
      required this.onTap,
      this.isBorder = false,
      this.textSize = 20,
      this.color = Colors.teal,
      this.textColor = Colors.white,
      this.radius = 8,
      this.height = 30,
      this.width = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: EdgeInsets.symmetric(vertical: size.longestSide * .006),
        decoration: BoxDecoration(
            border: Border.all(color: color, width: 2),
            borderRadius: BorderRadius.circular(radius),
            color: isBorder ? Colors.white : color),
        child: MaterialButton(
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isWithIcon
                  ? Image.asset("images/google_icon.png")
                  : const SizedBox.shrink(),
              const SizedBox(
                width: 5,
              ),
              Text(
                head,
                style: TextStyle(color: textColor, fontSize: textSize),
              )
            ],
          ),
        ));
  }
}
