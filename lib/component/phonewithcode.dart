import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneWithCodeItem extends StatelessWidget {
  final Size size;
  final TextEditingController phoneController;
  final PhoneNumber number;
  const PhoneWithCodeItem(
      {Key? key,
      required this.phoneController,
      required this.size,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number",
          style: TextStyle(
            fontSize: size.shortestSide * .048,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber number) {},
            onInputValidated: (bool value) {
              log(value.toString());
            },
            selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            ),
            autoValidateMode: AutovalidateMode.onUserInteraction,
            initialValue: number,
            textFieldController: phoneController,
            formatInput: false,
            hintText: "Eg. 12354478566",
            inputDecoration: const InputDecoration(
                disabledBorder: InputBorder.none,
                enabled: false,
                border: InputBorder.none,
                enabledBorder: InputBorder.none),
            keyboardType: const TextInputType.numberWithOptions(
                signed: true, decimal: true),
          ),
        )
      ],
    );
  }
}
