import 'package:flutter/material.dart';
import 'package:practica_daniel_lopez/ui/constants/app_constants.dart';

import 'package:practica_daniel_lopez/ui/views/home/widgets/search_box.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kMarginApp),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SearchBox(),
          Container(
            margin: const EdgeInsets.only(bottom: 15.0),
            child: const Icon(
              Icons.filter_alt_sharp,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
