import 'package:flutter/material.dart';
import 'package:tasks/component/button.dart';
import 'package:tasks/component/textfielditem.dart';
import 'package:tasks/task1/register/controller.dart';

import '../../component/appbar.dart';
import '../../component/haveaccount.dart';
import '../../component/phonewithcode.dart';
import '../signin/view.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final controller = RegisterController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(context, size, onTap: () {
        Navigator.pop(context);
      }),
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
            height: size.longestSide * .2,
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
                      "Register",
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
                TextFieldItem(
                  head: "Email",
                  hint: "Eg. example@email.com",
                  size: size,
                ),
                SizedBox(
                  height: size.longestSide * .01,
                ),
                PhoneWithCodeItem(
                    number: controller.number,
                    phoneController: controller.phoneController,
                    size: size),
                TextFieldItem(
                    head: "Password",
                    hint: "Password",
                    size: size,
                    isPassword: true),
                ButtonItem(
                  size: size,
                  head: "Sign in",
                  onTap: () {},
                  color: Colors.blue,
                  height: size.longestSide * .07,
                  radius: 5,
                ),
                SizedBox(
                    height: size.longestSide * .06,
                    child: Center(
                        child: Text(
                      "Or",
                      style: TextStyle(fontSize: size.shortestSide * .05),
                    ))),
                ButtonItem(
                  isWithIcon: true,
                  size: size,
                  head: "Sign with by google",
                  onTap: () {},
                  isBorder: true,
                  textColor: Colors.black,
                  color: Colors.blue,
                  height: size.longestSide * .07,
                  radius: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.longestSide * .007,
                  ),
                  child: HaveAccountItem(
                    head: "Doesn't has any account? ",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                    page: "Sign in here",
                    size: size,
                  ),
                ),
                const Center(
                    child: Text(
                        "By registering your account, you are agree to our")),
                Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("terms and conditions"))),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
