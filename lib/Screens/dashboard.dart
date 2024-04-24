import 'dart:convert';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<Dashboard> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(241, 241, 241, 0.8),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Dashboard',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w500,
            ),
          )),
      body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(241, 241, 241, 0.8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 18, left: 18, right: 9),
            child: ListView(
              children: [
                Container(
                  // height: 160,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Color.fromARGB(255, 37, 153, 11)),
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 25,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                               'Pending Order',
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    letterSpacing: 1,
                                    color: Color.fromARGB(189, 111, 111, 111),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Container(
                //   decoration: BoxDecoration(color: Colors.white),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.only(
                //             top: 18.0, left: 18, bottom: 20),
                //         child: Text(
                //           'Recent Order',
                //           style: TextStyle(
                //               fontFamily: 'Times New Roman',
                //               fontSize: 20,
                //               fontWeight: FontWeight.w500),
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 28.0),
                //         child: Container(
                //           width: MediaQuery.of(context).size.width,
                //           decoration: BoxDecoration(
                //             color: Color.fromRGBO(255, 255, 255, 1),
                //           ),
                //         ),
                //       ),
                //       Container(
                //         decoration: BoxDecoration(
                //           color: Color.fromRGBO(255, 255, 255, 1),
                //           // backgroundBlendMode: BlendMode.difference,
                //         ),
                //         child: Padding(
                //           padding: const EdgeInsets.only(top: 10.0),
                //           child: Center(
                //             child: GestureDetector(
                //               onTap: () {
                //                 // Navigator.push(
                //                 //     context,
                //                 //     MaterialPageRoute(
                //                 //         builder: (context) => orderDetails()));
                //               },
                //               child: ListView.builder(
                //                 shrinkWrap: true,
                //                 physics: NeverScrollableScrollPhysics(),
                //                 itemBuilder: (context, index) {
                //                   return Container(
                //                     margin: EdgeInsets.only(bottom: 0, top: 10),
                //                     decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(20),
                //                       color: Color.fromARGB(255, 255, 255, 255),
                //                       // boxShadow: [
                //                       //   BoxShadow(
                //                       //     color: Colors.grey.withOpacity(0.5),
                //                       //     spreadRadius: 0.5,
                //                       //     blurRadius: 0.5,
                //                       //     offset:
                //                       //         Offset(0, 2), // changes position of shadow
                //                       //   ),
                //                       // ]
                //                     ),
                //                     child: Padding(
                //                       padding: const EdgeInsets.only(
                //                           left: 8.0, right: 8),
                //                       child: Column(
                //                         children: [
                //                           Row(
                //                             mainAxisAlignment:
                //                                 MainAxisAlignment.spaceBetween,
                //                             children: [
                //                               Padding(
                //                                 padding: const EdgeInsets.only(
                //                                     left: 8.0),
                //                                 child: Row(
                //                                   children: [
                //                                     Text(
                //                                       ' Order Id: ',
                //                                       style: TextStyle(
                //                                         fontFamily: 'Ubuntu',
                //                                         fontSize: 16,
                //                                         // fontWeight:
                //                                         //     FontWeight.bold
                //                                       ),
                //                                     ),
                //                                     Text(
                //                                       ' ${orderId[index]}',
                //                                       style: TextStyle(
                //                                           fontFamily: 'Ubuntu',
                //                                           fontSize: 14,
                //                                           fontWeight:
                //                                               FontWeight.bold),
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ),
                //                               Padding(
                //                                 padding: const EdgeInsets.only(
                //                                     right: 6.0),
                //                                 child: Row(
                //                                   children: [
                //                                     Text(
                //                                       'Rs. ${totalAmount[index]} ',
                //                                       style: TextStyle(
                //                                           fontFamily: 'Ubuntu',
                //                                           fontSize: 14,
                //                                           fontWeight:
                //                                               FontWeight.bold),
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                           SizedBox(
                //                             height: 20,
                //                           ),
                //                           Row(
                //                             mainAxisAlignment:
                //                                 MainAxisAlignment.spaceBetween,
                //                             children: [
                //                               Padding(
                //                                 padding: const EdgeInsets.only(
                //                                     left: 9.0),
                //                                 child: Row(
                //                                   children: [
                //                                     Text(
                //                                       'Order Time:',
                //                                       style: TextStyle(
                //                                         fontFamily: 'Ubuntu',
                //                                         fontSize: 16,
                //                                         // fontWeight:
                //                                         //     FontWeight.bold
                //                                       ),
                //                                     ),
                //                                     Text(
                //                                       ' ${orderDate[index]}',
                //                                       style: TextStyle(
                //                                           fontFamily: 'Ubuntu',
                //                                           fontSize: 14,
                //                                           fontWeight:
                //                                               FontWeight.bold),
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ),
                //                               Padding(
                //                                 padding: const EdgeInsets.only(
                //                                     right: 8.0),
                //                                 child: Row(
                //                                   children: [
                //                                     Icon(
                //                                       Icons.history,
                //                                       color: Colors.red,
                //                                       size: 10,
                //                                     ),
                //                                     Text(
                //                                       '${orderStatus[index]}',
                //                                       style: TextStyle(
                //                                           fontFamily: 'Ubuntu',
                //                                           color: Colors.red,
                //                                           fontSize: 14,
                //                                           fontWeight:
                //                                               FontWeight.bold),
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                           SizedBox(
                //                             height: 10,
                //                           ),
                //                           Divider(
                //                             color: const Color.fromARGB(
                //                                 255, 213, 213, 213),
                //                             // height: 1,
                //                             thickness: 1.2,
                //                           )
                //                         ],
                //                       ),
                //                     ),
                //                   );
                //                 },
                //                 itemCount: 5 ,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // )
             
              ],
            ),
          )),
    );
  }
}
