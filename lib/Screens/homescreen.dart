import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siineo/Screens/categoryproductlist.dart';
import 'package:siineo/Screens/productdesc.dart';
import 'package:siineo/Screens/widgets/buttons.dart';
import 'package:siineo/variable.dart';
import 'package:http/http.dart' as http;

import 'package:http/http.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({super.key});

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

late Future<List<Map<String, dynamic>>> fetchProductsFuture;
late CarouselController controller;
int currentIndex = 0;
// List<Map<String, dynamic>> data = [];

Future<List<Map<String, dynamic>>> fetchProducts() async {
  Uri url = Uri.parse('$link/api/products');
  Response response = await http.get(url, headers: {'apikey': apikey});

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

    return products;
  } else {
    return [];
  }
}

class _home_ScreenState extends State<home_Screen> {
  @override
  initState() {
    fetchProductsFuture = fetchProducts();
    controller = CarouselController();
    super.initState();
  }

  carouselimage() {
    return Container(
      child: CarouselSlider(
        carouselController: controller,
        options: CarouselOptions(
          height: 180,
          viewportFraction: 1,
          initialPage: 0,
          scrollPhysics: BouncingScrollPhysics(),
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(milliseconds: 10000),
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          // autoPlayCurve: Curves.linear,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          },
          scrollDirection: Axis.horizontal,
        ),
        items: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 0.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 223, 223),
              borderRadius: BorderRadius.circular(0),
            ),
            child: Image(
              image: NetworkImage(
                'https://www.siineo.com.np/frontend/images/categories/628a8988-8cc5-4aa5-ae1a-7d3b0eb958de.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 0.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 223, 223),
              borderRadius: BorderRadius.circular(0),
            ),
            child: Image(
              image: NetworkImage(
                'https://www.siineo.com.np/frontend/images/categories/316fb6e8-b0bb-4281-a0aa-71e26a943c77.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 50,
        leading: Text(''),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.only(right: 8.0.w),
        //     child: Icon(Icons.search, color: Colors.black),
        //   ),
        // ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Image.asset(
            'assets/images/logosin.png',
            width: 100.w,
            height: 50.h,
            fit: BoxFit.contain,
          ),
        ),
        // title: Text(
        //   'Home Screen',
        //   style: TextStyle(color: Colors.black),
        // ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            Future.delayed(Duration(seconds: 2));
            setState(() {
              fetchProductsFuture = fetchProducts();
            });
          },
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
               

                      //search bar
                      // Padding(
                      //   padding: EdgeInsets.only(left: 18.0.w, right: 18.0.w),
                      //   child: Container(
                      //     height: 40.w,
                      //     decoration: BoxDecoration(
                      //       color: Color.fromRGBO(235, 235, 235, 1),
                      //       borderRadius: BorderRadius.circular(5),
                      //     ),
                      //     child: Padding(
                      //       padding: EdgeInsets.only(left: 10.0.w),
                      //       child: Row(
                      //         children: [
                      //           Icon(Icons.search),
                      //           SizedBox(width: 10),
                      //           Text('Search for products', style: TextStyle(fontSize: 12.w)),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      SizedBox(height: 40),
                      carouselimage(),
                      // SizedBox(height: 20.w),
                      Container(
                        height: 200.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(207, 207, 207, 1),
                              Color.fromRGBO(255, 255, 255, 1)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 28.0.w),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      'assets/images/2.png',
                                      width: 200.w,
                                      height: 150.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Inverter',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          letterSpacing: 1.2,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      customButton(
                                          text: 'Shop Now',
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        category_Product_List(
                                                            categoryName:
                                                                'online-ups')));
                                          }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Container(
                          height: 200.w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(255, 255, 255, 1),
                                Color.fromRGBO(207, 207, 207, 1)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0.w, bottom: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 10.0.w),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Online UPS',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            letterSpacing: 1,
                                            fontSize: 20.w,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        customButton(
                                            text: 'Shop Now', onPressed: () {}),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/1.png',
                                          width: 200.w,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 200.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(207, 207, 207, 1),
                              Color.fromRGBO(255, 255, 255, 1)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Flexible(
                                  flex: 1,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/3.png',
                                      height: 100.w,
                                      width: 200.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 0.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Tubular Battery',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          letterSpacing: 1,
                                          fontSize: 20.w,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      customButton(
                                          text: 'Shop Now', onPressed: () {}),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 18.0.w),
                          child:
                              Text('Brands', style: TextStyle(fontSize: 22.w)),
                        ),
                      ),
                      // SizedBox(
                      //   height: 5
                      // ),
                      Container(
                        height: 90.w,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: 18.0.w),
                              child: Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 40,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.asset(
                                      'assets/images/2.png',
                                      fit: BoxFit.cover,
                                      height: 100.w,
                                      width: 100.w,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: 4,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'All Products',
                          style: TextStyle(
                            fontSize: 22.w,
                            // fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Work with tabs
                      Padding(
                        padding:  EdgeInsets.only(
                            left: 10.0, right: 10, top: 5,bottom: 30.w),
                        child: Container(
                          // color: Colors.white,
                          child: FutureBuilder(
                              future: fetchProductsFuture,
                              builder: (BuildContext context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Container();
                                } else if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                } else if (!snapshot.hasData ||
                                    snapshot.data!.isEmpty) {
                                  return Text('No data available');
                                } else {
                                  List<Map<String, dynamic>> products =
                                      snapshot.data!;

                                  return GridView.builder(
                                    
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10,
                                            childAspectRatio: 0.7),
                                            
                                    itemBuilder: (BuildContext context, index) {
                                      List<Map<String, dynamic>> products =
                                          snapshot.data!;
                                      return Material(
                                        // elevation: 1,
                                        color: Colors.white,
                                        // borderRadius: BorderRadius.circular(12) ,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        productDesc(
                                                          slug: products[index]
                                                              ['title'],
                                                        )));
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  // borderRadius: BorderRadius.circular(12),
                                                  // color: Color.fromARGB(255, 235, 235, 235),
                                                  ),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  // mainAxisAlignment: MainAxisAlignment.center ,
                                                  children: [
                                                    Container(
                                                        decoration:
                                                            BoxDecoration(
                                                                // color: Colors.white
                                                                ),
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 18.0
                                                                          .w),
                                                              child:
                                                                  Image.network(
                                                                '${products[index]['image']}',
                                                                fit: BoxFit
                                                                    .contain,
                                                                height: 140.w,
                                                                width: 140.w,
                                                              ),
                                                            ))),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 8.0.w,
                                                          right: 8.w),
                                                      child: RichText(
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          text: TextSpan(
                                                            text:
                                                                '${products[index]['title']}',
                                                            style: TextStyle(
                                                                fontSize: 14.w,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                letterSpacing:
                                                                    1.2,
                                                                color: Colors
                                                                    .black),
                                                          )),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 8.0.w,
                                                          right: 8.w),
                                                      child: Text(
                                                        'Rs. ${products[index]['retailer_price']}',
                                                        style: TextStyle(
                                                            fontSize: 14.w,
                                                            // fontWeight: FontWeight.w500,
                                                            letterSpacing: 1.2,
                                                            color: Colors
                                                                .grey[600]),
                                                      ),
                                                    ),
                                                  ])),
                                        ),
                                      );
                                    },
                                    itemCount: products.length,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                  );
                                }
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
