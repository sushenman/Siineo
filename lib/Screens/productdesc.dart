import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siineo/Screens/cart.dart';
import 'package:siineo/Screens/homescreen.dart';
import 'package:siineo/Screens/widgets/bottomNav.dart';
import 'package:siineo/Screens/widgets/buttons.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/safe_area_values.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class productDesc extends StatefulWidget {
  productDesc({super.key, required this.slug});

  final String slug;

  @override
  State<productDesc> createState() => _productDescState();
}

class _productDescState extends State<productDesc> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Product Description', style: TextStyle(
        //   color: Colors.black,
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,

        // ),),
        backgroundColor: Color.fromARGB(255, 63, 163, 5),
        centerTitle: true,
        title: Text(
          '${widget.slug}',
          style: TextStyle(
              color: Colors.white, fontSize: 16.sp, letterSpacing: 1.2),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
              color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 63, 163, 5),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.amberAccent
                          ),
                      child: Image.asset(
                        'assets/images/1.png',
                        fit: BoxFit.contain,
                        // width: MediaQuery.of(context).size.width,
                        height: 200.w,
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.w,
                        bottom: 0.0,
                        left: 20.w,
                      ),
                      child: Container(
                        // width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          'Praxis Tubular 100AH Battery ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.0.w, left: 20.w, right: 20.w),
                            child: Text(
                              'Rs 10,000',
                              style: TextStyle(
                                  fontFamily: 'Arial',
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 5.w, left: 20.w, right: 20.w),
                            child: Text(''),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.0.w, left: 20.w, right: 20.w),
                            child: Text(
                              'Brand: Praxis ',
                              style: TextStyle(
                                  fontFamily: 'Arial',
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 5.w, left: 20.w, right: 20.w),
                            child: Icon(Icons.favorite),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.0.w, left: 20.w, right: 20.w),
                    child: Text(
                      'Description',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontSize: 18.w,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0.w, left: 20.w, right: 20.w, bottom: 60.w),
                    child: Text(
                      'The Praxis Tubular 100AH Battery is a high-quality battery that is designed to provide reliable and consistent power for a wide range of applications. It is ideal for use in solar power systems, backup power systems, and other applications where reliable power is essential. The battery is designed to provide ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: 'Arial',
                          color: const Color.fromARGB(255, 88, 88, 88),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       top: 60.0, left: 20, right: 20),
                  //   child: Text(
                  //     'Description',
                  //     style: TextStyle(
                  //         fontFamily: 'Arial',
                  //         color: Colors.black,
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.bold,
                  //         letterSpacing: 1.5),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       top: 20.0, left: 20, right: 20, bottom: 20),
                  //   child: Text(
                  //     'The Praxis Tubular 100AH Battery is a high-quality battery that is designed to provide reliable and consistent power for a wide range of applications. It is ideal for use in solar power systems, backup power systems, and other applications where reliable power is essential. The battery is designed to provide ',
                  //     textAlign: TextAlign.justify,
                  //     style: TextStyle(
                  //         fontFamily: 'Arial',
                  //         color: const Color.fromARGB(255, 88, 88, 88),
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.w400,
                  //         letterSpacing: 1),
                  //   ),
                  // ),
                ],
              ),
            )),
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 31, 31, 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isVisible = true;
                  });
                  Future.delayed(Duration(seconds: 2), () {
                    showTopSnackBar(
                        Overlay.of(context),
                        CustomSnackBar.success(
                            message: 'Successfully added to cart'));
                    setState(() {
                      isVisible = false;
                    });
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Row(

                      children: [
                        InkWell(
                            child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        )),
                        SizedBox(width: 30.w,),
                        Visibility(
                          child: Container(
                            height: 20.w ,
                            width: 20.w,
                            child: CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          ),
                          visible: isVisible,
                        )
                      ],
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 63, 163, 5)),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 8, vertical: 4)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.favorite_outline),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(63, 68, 66, 1)),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 0, vertical: 2.w)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
            // Container(
            //     width: MediaQuery.of(context).size.width * 0.45,
            //     child: ElevatedButton(
            //       onPressed: () {
            //         Navigator.push(context,
            //             MaterialPageRoute(builder: (context) => My_Cart()));
            //       },
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Icon(
            //             Icons.shopping_cart_outlined,
            //             color: Colors.white,
            //             size: 20.sp,
            //           ),
            //           SizedBox(
            //             width: 7,
            //           ),
            //           InkWell(child: Text('Buy Now', style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 14.sp,
            //             fontWeight: FontWeight.bold
            //           ),)),
            //         ],
            //       ),
            //       style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.all<Color>(
            //              Color.fromRGBO(63, 68, 66, 1)),
            //         padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            //             EdgeInsets.symmetric(horizontal: 8, vertical: 4)),
            //         shape:
            //             MaterialStateProperty.all<RoundedRectangleBorder>(
            //           RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
