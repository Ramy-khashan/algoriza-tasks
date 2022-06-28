import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignInController {
  String bgImg = "images/bgimage.jpg";
  String policy =
      "Use the application according to policy. Any kinds of violation will be subject to sanctions.";
  final TextEditingController phoneController = TextEditingController();
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
}
