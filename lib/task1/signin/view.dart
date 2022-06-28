import 'package:flutter/material.dart';
import 'package:tasks/component/button.dart';
import 'package:tasks/task1/signin/controller.dart';
import '../../component/appbar.dart';
import '../../component/haveaccount.dart';
import '../../component/phonewithcode.dart';
import '../register/view.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final controller = SignInController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(
        context,
        size,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      controller.bgImg,
                    ),
                    fit: BoxFit.fill)),
            height: size.longestSide * .3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.shortestSide * .03,
              vertical: size.longestSide * .025,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome to Fashion Daily",
                  style: TextStyle(color: Colors.blue),
                ),
                Row(
                  children: [
                    Text(
                      "Sign in",
                      style: TextStyle(
                        fontFamily: "shape",
                          fontSize: size.shortestSide * .06,
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    TextButton(onPressed: () {}, child: const Text("Help")),
                    const Icon(
                      Icons.help,
                      color: Colors.blue,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.longestSide * .03,
                ),
                PhoneWithCodeItem(
                    number: controller.number,
                    phoneController: controller.phoneController,
                    size: size),
                SizedBox(
                  height: size.longestSide * .03,
                ),
                ButtonItem(
                  size: size,
                  head: "Sign in",
                  onTap: () {},
                  color: Colors.blue,
                  height: size.longestSide * .07,
                  radius: 3,
                ),
                SizedBox(
                    height: size.longestSide * .06,
                    child: Center(
                      child: Text(
                        "Or",
                        style: TextStyle(fontSize: size.shortestSide * .05),
                      ),
                    )),
                ButtonItem(
                  isWithIcon: true,
                  size: size,
                  head: "Sign with by google",
                  onTap: () {},
                  isBorder: true,
                  textColor: Colors.black,
                  color: Colors.blue,
                  height: size.longestSide * .07,
                  radius: 3,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.longestSide * .015,
                  ),
                  child: HaveAccountItem(
                    head: "Doesn't has any account? ",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    page: "Register here",
                    size: size,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.shortestSide * .07,
                        vertical: size.longestSide * .02),
                    child: Text(
                      controller.policy,
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
