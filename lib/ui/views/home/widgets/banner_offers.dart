import 'package:flutter/material.dart';
import 'package:practica_daniel_lopez/ui/components/theme/app_colors.dart';
import 'package:practica_daniel_lopez/ui/constants/app_constants.dart';

class BannerOffers extends StatelessWidget {
  const BannerOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: kMarginApp, vertical: kMarginApp),
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(children: [
        Container(
            margin: const EdgeInsets.only(left: 10),
            width: 90.0,
            height: 90.0,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: AppColors.kAppBackgroundColor,
                  borderRadius: BorderRadius.circular(20.0)),
              child: const Icon(
                Icons.percent,
                color: Colors.black,
                size: 25,
              ),
            )),
        const SizedBox(
          width: 10,
        ),
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              '50% OFF',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w800),
            ),
            const Text("On all women's shoes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500)),
          ],
        ),
        const SizedBox(
          width: 45.0,
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 20,
        )
      ]),
    );
  }
}
