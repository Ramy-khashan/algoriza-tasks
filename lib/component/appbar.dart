import 'package:flutter/material.dart';

import 'button.dart';

PreferredSizeWidget appBar(BuildContext context, Size size,
        {bool isSkip = false,
        required VoidCallback onTap,
        bool isBack = true}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: isBack
          ? Container(
              margin:
                  EdgeInsets.symmetric(horizontal: size.shortestSide * .015),
              padding: EdgeInsets.only(left: size.shortestSide * .01),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: size.shortestSide * .05,
                ),
                color: Colors.black,
              ),
            )
          : const SizedBox.shrink(),
      actions: [
        isSkip
            ? ButtonItem(
                head: "Skip",
                onTap: onTap,
                size: size,
                color: Colors.orange.shade100.withOpacity(.5),
                textColor: Colors.black,
                radius: 30,
                height: size.longestSide * .01,
                textSize: size.shortestSide * .04,
              )
            : const SizedBox.shrink(),
      ],
    );
