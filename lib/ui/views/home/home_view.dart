import 'package:flutter/material.dart';
import 'package:practica_daniel_lopez/ui/components/template/custom_bottom_navigation.dart';
import 'package:practica_daniel_lopez/ui/components/template/custom_scaffold.dart';
import 'package:practica_daniel_lopez/ui/views/home/widgets/banner_offers.dart';
import 'package:practica_daniel_lopez/ui/views/home/widgets/categories.dart';
import 'package:practica_daniel_lopez/ui/views/home/widgets/header_text.dart';
import 'package:practica_daniel_lopez/ui/views/home/widgets/items.dart';
import 'package:practica_daniel_lopez/ui/views/home/widgets/search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: ListView(
          // ignore: prefer_const_constructors
          children: [
            SearchBar(),
            Categories(),
            BannerOffers(),
            HeaderText(),
            Items()
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigation());
  }
}
