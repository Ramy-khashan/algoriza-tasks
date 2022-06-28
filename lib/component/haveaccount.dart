import 'package:flutter/material.dart';

class HaveAccountItem extends StatelessWidget {
  final Size size;
  final String head;
  final String page;
  final VoidCallback onTap;
  const HaveAccountItem(
      {Key? key,
      required this.head,
      required this.onTap,
      required this.page,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        head,
        style: TextStyle(fontSize: size.shortestSide * .045),
      ),
      TextButton(
        child: Text(
          page,
          style: TextStyle(fontSize: size.shortestSide * .043),
        ),
        onPressed: onTap,
      )
    ]);
  }
}
