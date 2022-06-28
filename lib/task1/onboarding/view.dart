import 'package:flutter/material.dart';
import 'package:tasks/component/appbar.dart';
import 'package:tasks/component/haveaccount.dart';
import 'package:tasks/task1/onboarding/controller.dart';
import 'package:tasks/task1/signin/view.dart';

import '../../component/button.dart';
import '../register/view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: appBar(
          context,
          size,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterScreen()));
          },
          isSkip: true,
          isBack: false,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.shortestSide * .05,
          ),
          child: Column(children: [
            Text(
              "7krave",
              style: TextStyle(
                color: Colors.teal.shade300,
                fontSize: size.shortestSide * .08,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
                child: PageView(
              onPageChanged: (val) {
                controller.index = val;
                setState(() {});
              },
              children: List.generate(
                  3,
                  (index) => Image.asset(
                        controller.img[index],
                      )),
            )),
            Text(controller.description[controller.index],
                style: TextStyle(
                    fontSize: size.shortestSide * .067,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center),
            SizedBox(
              height: size.longestSide * .015,
            ),
            Text(controller.longDescription[controller.index],
                style: TextStyle(fontSize: size.shortestSide * .045),
                textAlign: TextAlign.center),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.longestSide * .02,
                            horizontal: size.shortestSide * .005),
                        child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            decoration: BoxDecoration(
                                color: controller.index == index
                                    ? Colors.amber.shade500
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(5)),
                            height: size.longestSide * .011,
                            width: size.shortestSide * .05),
                      )),
            ),
            ButtonItem(
              color: Colors.teal.shade300,
              head: "Get Started",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
              size: size,
              height: size.longestSide * .075,
              textSize: size.shortestSide * .05,
            ),
            HaveAccountItem(
              head: "Don't have an account? ",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              page: "Sign Up",
              size: size,
            ),
          ]),
        ));
  }
}
