import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  final String hint;
  final String head;
  final bool isPassword;
  final Size size;
  const TextFieldItem(
      {Key? key,
      required this.head,
      required this.hint,
      required this.size,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.longestSide * .01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            head,
            style: TextStyle(
              fontSize: size.shortestSide * .048,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextFormField(
            obscureText: isPassword,
            decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5))),
          ),
        ],
      ),
    );
  }
}
