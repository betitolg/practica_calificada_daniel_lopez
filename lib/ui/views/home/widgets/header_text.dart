import 'package:flutter/material.dart';
import 'package:practica_daniel_lopez/ui/constants/app_constants.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kMarginApp),
      child: const Text(
        'New Items',
        style: TextStyle(
            color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w400),
      ),
    );
  }
}
