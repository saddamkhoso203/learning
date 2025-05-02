import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/productmodel.dart';

class Productexample extends StatefulWidget {
  const Productexample({super.key});

  @override
  State<Productexample> createState() => _ProductexampleState();
}

class _ProductexampleState extends State<Productexample> {
  Future<List<ProductModel>> fetchProductData() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      print('data is ${response.body}');
      List<dynamic> decodedData = jsonDecode(response.body);
      List<ProductModel> productModel = decodedData.map((json) {
        return ProductModel.fromJson(json);
      }).toList();
      return productModel;
    } else {
      throw Exception("data not found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product From Api",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: FutureBuilder(
        future: fetchProductData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ProductModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("Error in the data ${snapshot.error}"),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: Text("No Data Found"),
            );
          }
          return GridView.builder(

            itemCount: snapshot.data?.length ?? 0,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('${snapshot.data![index].rating!.rate}'),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        )
                      ],
                    ),
                    Expanded(
                        child: Image.network(
                      "${snapshot.data![index].image}",
                      fit: BoxFit.fill,
                    )),
                    Text(
                      "${snapshot.data![index].title}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("${snapshot.data![index].price}",style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                        ElevatedButton(onPressed: (){}, 
                            child: Text("Add"))
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
