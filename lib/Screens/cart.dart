import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siineo/Screens/checkout.dart';
import 'package:siineo/Screens/widgets/bottomNav.dart';

class My_Cart extends StatefulWidget {
  const My_Cart({super.key});

  @override
  State<My_Cart> createState() => _My_CartState();
}

class _My_CartState extends State<My_Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            'My Cart',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CustomBottomNavigationBar();
              }));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20.sp,
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.w),
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8.0.w,
                                bottom: 8.w,
                              ),
                              child: Image.asset('assets/images/1.png',
                                  height: 70.w,
                                  width: 70.w,
                                  fit: BoxFit.contain),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: (MediaQuery.of(context).size.width * 0.55).w, 
                                child: Text(
                                  'Su-vastika Tubular Battery(100AH)',
                                  style: TextStyle(
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[600],
                                      letterSpacing: 1),
                                ),
                              ),
                              SizedBox(
                                height: 10.w,
                              ),
                              Container(
                                // width: MediaQuery.of(context).size.width * 0.6,
                                // color: Colors.grey[200],
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rs. 15000',
                                      style: TextStyle(
                                          fontSize: 15.w,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[600],
                                          letterSpacing: 1),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color:
                                            Color.fromARGB(255, 235, 235, 235),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                radius: 12,
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                   EdgeInsets.symmetric(
                                                      horizontal: 7.0.w),
                                              child: Text('1'),
                                            ),
                                            Padding(
                                              padding:
                                                   EdgeInsets.all(3.0.w),
                                              child: CircleAvatar(
                                                backgroundColor: Colors.green,
                                                radius: 12,
                                                child: Center(
                                                    child: Icon(
                                                  Icons.add,
                                                  size: 18.w,
                                                  color: Colors.white,
                                                )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  );
                }),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Row(
                children: [
                  Text(
                    'Subtotal',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        letterSpacing: 1,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Spacer(),
                  Text('Rs. 15000',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          letterSpacing: 1,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 0, 0, 0))),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0.sp),
              child: Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        letterSpacing: 1,
                         fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Spacer(),
                  Text('Rs. 15000',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          letterSpacing: 1,
                           fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 0, 0, 0))),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Checkout();
                }));
              },
              child: Text(' Checkout'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  minimumSize: MaterialStateProperty.all(
                      Size((MediaQuery.of(context).size.width * 0.7).w, 35.w)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 15.sp,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
