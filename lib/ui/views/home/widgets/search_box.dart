import 'package:flutter/material.dart';
import 'package:practica_daniel_lopez/ui/components/theme/app_colors.dart';
import 'package:practica_daniel_lopez/ui/constants/app_constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kMarginApp,
        bottom: 35.0,
        top: 20.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.kSearchColor,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Colors.black),
      ),
      height: 60.0,
      width: 330.0,
      child: Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Search',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            const Icon(
              Icons.search,
              color: AppColors.kSubTitle,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
