import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practica_daniel_lopez/models/category_model.dart';
import 'package:practica_daniel_lopez/ui/constants/app_constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  // ignore: must_call_super
  void initState() {
    fetchData();
  }

  List<ResponseCategoryModel> categories = [];
  ResponseCategoryModel initial = ResponseCategoryModel(
    id: 0,
    name: 'All',
    image: 'https://cdn-icons-png.flaticon.com/512/43/43107.png',
  );

  void fetchData() async {
    var dio = Dio();
    final response = await dio.get(endpointCategories);

    categories = (response.data as List)
        .map((x) => ResponseCategoryModel.fromJson(x))
        .toList();
    categories.insert(0, initial);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 100.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return InkWell(
              onTap: () => {setState(() {})},
              child: Column(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(category.image == null
                                ? ''
                                : category.image.toString()),
                            fit: index == 0 ? BoxFit.cover : BoxFit.cover)),
                    margin: EdgeInsets.only(
                      left: index == 0 ? 10.0 : 0.0,
                      right: 25.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? 10.0 : 0.0,
                      right: 25.0,
                    ),
                    child: Text(category.name.toString(),
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            );
          }),
    );
  }
}
