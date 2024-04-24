import 'dart:convert';

import 'package:flutter/material.dart';


class Order_Details extends StatefulWidget {
 
  // final String orderId;
 const Order_Details({super.key,});
  @override
  State<Order_Details> createState() => _orderDetailsState();
}
class _orderDetailsState extends State<Order_Details> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          leading: IconButton(
            onPressed: () {},
            // Navigator.pop(context);
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Text(
            'My Order',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // shrinkWrap: true,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' ORDER ID',
                      style: TextStyle(
                          // letterSpacing: 3,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                      Text(
                      ' ORDER DATE',
                      style: TextStyle(
                          // letterSpacing: 3,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '111',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                     Text(
                      '02/28/2024',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Name: Sushen Man Bijuckhhe',     style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      color: const Color.fromARGB(255, 0, 0, 0)),),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'ITEMS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        fontSize: 16),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        // decoration: BoxDecoration(
                        //   color: Colors.transparent,
                        // ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, right: 0.0, top: 0),
                            child: Card(
                              color: const Color.fromARGB(0, 209, 89, 89),
                              elevation: 0,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  ListTile(
                                    // leading: CircleAvatar(
                                    //   radius: 30,
                                    //   backgroundImage: AssetImage(
                                    //       'assets/images/1.jpg'),
                                    // ),
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 10.0),
                                      child: Text(
                                       'Product Name',
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0)),
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Quantity:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                    trailing: Text(
                                      'Rs 1000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,letterSpacing: 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            )),
                      );
                    }),
                Divider(
                  color: Colors.black,
                ),
                Card(
                  elevation: 0,
                
                child: ListTile(trailing: Container(
                  // width: 130,
                  child: Text('Total   Rs 1000', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),)),),
                ),
                SizedBox(
                  height: 30,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 10.0),
                //   child: Text(
                //     'PAYMENT METHOD',
                //     style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         letterSpacing: 3,
                //         fontSize: 16),
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Text(
                //   'Cash on Delivery',
                //   style: TextStyle(
                //       letterSpacing: 2,
                //       fontSize: 16,
                //       // fontWeight: FontWeight.bold,
                //       fontStyle: FontStyle.italic,
                //       color: const Color.fromARGB(255, 0, 0, 0)),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
              
              ],
            ),
          ),
        ));
  }
}
