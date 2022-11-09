import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practica_daniel_lopez/models/items_model.dart';
import 'package:practica_daniel_lopez/ui/components/theme/app_colors.dart';
import 'package:practica_daniel_lopez/ui/constants/app_constants.dart';

class Items extends StatefulWidget {
  const Items({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  ResponseProductModel product = ResponseProductModel();
  List<ResponseProductModel> products = [];
  void fetchData() async {
    var dio = Dio();
    final response = await dio.get("$endpointProducts/1/products?limit=5");

    products = (response.data as List)
        .map((e) => ResponseProductModel.fromJson(e))
        .toList();

    setState(() {});
  }

  void fetchDataWithId(String id) async {
    var dio = Dio();
    final response = await dio.get("$endpointProducts/$id/products?limit=5");

    products = (response.data as List)
        .map((e) => ResponseProductModel.fromJson(e))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: double.infinity,
      height: 300.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Container(
                margin: EdgeInsets.only(
                  left: index == 0 ? 20.0 : 0.0,
                  right: 20.0,
                ),
                child: Container(
                    width: 180.0,
                    height: 400.0,
                    decoration: BoxDecoration(
                      color: AppColors.kAppBackgroundColor,
                      borderRadius: BorderRadius.circular(17.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(17.0),
                                      topRight: Radius.circular(17.0)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          product.images?[0].toString() == null
                                              ? ''
                                              : product.images![0].toString()),
                                      fit: BoxFit.cover)),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: const EdgeInsets.all(10.0),
                                width: 30.0,
                                height: 30.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_sharp,
                                    color: Colors.black,
                                    size: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          product.title.toString(),
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$${product.price}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800)),
                            const Icon(
                              Icons.add,
                              size: 30.0,
                            )
                          ],
                        ),
                      ],
                    )));
          }),
    );
  }
}
