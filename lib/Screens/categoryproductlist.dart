import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:siineo/Screens/productdesc.dart';
import 'package:siineo/variable.dart';

class category_Product_List extends StatefulWidget {
  final String categoryName;
  const category_Product_List({Key? key, required this.categoryName})
      : super(key: key);

  @override
  State<category_Product_List> createState() => _category_Product_ListState();
}

class _category_Product_ListState extends State<category_Product_List> {
  late Future<List<Map<String, dynamic>>> fetchProductsFuture;
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  bool brandFilter1 = false;
  bool brandFilter2 = false;
  bool inverterFilter = false;
  bool upsFilter = false;
  bool tubularBatteryFilter = false;
  void initState() {
    super.initState();
    fetchProductsFuture = getProducts();
    getProducts();
  }

  void filter() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, setState) {
            return Container(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Filter',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    ListTile(
                        title: Text(
                          'Price',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          children: [
                            SizedBox(height: 10),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Min',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Max',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        'Brand',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        children: [
                          CheckboxListTile(
                            title: Text('Brand 1'),
                            value: brandFilter1,
                            onChanged: (value) {
                              setState(() {
                                brandFilter1 = value!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text('Brand 2'),
                            value: brandFilter2,
                            onChanged: (value) {
                              setState(() {
                                brandFilter2 = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        'Category List',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        children: [
                          CheckboxListTile(
                            title: Text('Inverter'),
                            value: inverterFilter,
                            onChanged: (value) {
                              setState(() {
                                inverterFilter = value!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text('Ups'),
                            value: upsFilter,
                            onChanged: (value) {
                              setState(() {
                                upsFilter = value!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text('Tubular Battery'),
                            value: tubularBatteryFilter,
                            onChanged: (value) {
                              setState(() {
                                tubularBatteryFilter = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Apply filter logic
                            Navigator.pop(context);
                          },
                          child: Text('Apply'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Future<List<Map<String, dynamic>>> getProducts() async {
    try {
      print(widget.categoryName);
      Uri url = Uri.parse('$link/api/categories/${widget.categoryName}');
      print('url = $url');
      Response response = await get(url, headers: {'apikey': apikey});
      if (response.statusCode == 200) {
        dynamic responseData = jsonDecode(response.body);
        List<Map<String, dynamic>> products = [];

        for (int i = 0; i < responseData['products'].length; i++) {
          Map<String, dynamic> product = {
            'slug': responseData['products'][i]['slug'],
            'image': responseData['products'][i]['image'],
            'title': responseData['products'][i]['title'],
            'retailer_price': responseData['products'][i]['retailer_price'],
            'mrp_price': responseData['products'][i]['mrp_price'],
          };

          products.add(product);
        }
        print(response.body);
        return products;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print('error $e');
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: const Text(
          'Category Product List',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              filter();
            },
            icon: const Icon(Icons.filter_alt_outlined),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 244, 244, 244),
        child: Center(
          child: FutureBuilder(
              future: fetchProductsFuture,
              builder: (BuildContext context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Container();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Text('No data available');
                } else {
                  List<Map<String, dynamic>> products = snapshot.data!;

                  return Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: GridView.builder(
                      itemCount: 5,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        childAspectRatio: 0.75,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return productDesc(slug: products[index]['slug'] ,);
                              }));
                            },
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        // Padding(
                                        //   padding: const EdgeInsets.only(
                                        //       right: 10.0, top: 10),
                                        //   child: Icon(
                                        //     Icons.favorite_border_outlined,
                                        //     color: Color.fromARGB(255, 0, 0, 0),
                                        //     size: 20,
                                        //   ),
                                        // ),
                                        Image.network(
                                          '${products[index]['image']}',
                                          fit: BoxFit.contain,
                                          height: 100,
                                          width:
                                              MediaQuery.of(context).size.width,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '${products[index]['title']}',
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0.0,
                                        top: 10,
                                        right: 12,
                                        bottom: 10),
                                    child: Text(
                                      'Rs ${products[index]['retailer_price']}',
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                        fontSize: 14,
                                      ),
                                    ), 
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }
              }),
        ),
      ),
    );
  }
}
