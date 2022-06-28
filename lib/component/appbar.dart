import 'package:flutter/material.dart';


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
      
    );
