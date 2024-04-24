import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Ship to: ',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        Text('Infinity Infosys',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text('Kathmandu, Nepal',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.green)),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.green,
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: 13,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8),
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
                                padding:
                                    const EdgeInsets.only(left: 8.0, bottom: 8),
                                child: Image.asset('assets/images/1.png',
                                    height: 80, width: 80, fit: BoxFit.cover),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.65,
                                child: Text(
                                  'Su-vastika Tubular Battery(100AH) ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[600],
                                      letterSpacing: 1),
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                // width: MediaQuery.of(context).size.width * 0.6,
                                // color: Colors.grey[200],
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Rs. 15000'),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.26,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text('Qty: '),
                                          Text('1'),
                                        ],
                                      ),
                                    ),
                                    // Container(
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(100),
                                    //     color: Color.fromARGB(255, 235, 235, 235),
                                    //   ),
                                    //   child: Padding(
                                    //     padding: const EdgeInsets.all(2.0),
                                    //     child: Row(
                                    //       children: [
                                    //         Padding(
                                    //           padding: const EdgeInsets.all(3.0),
                                    //           child: CircleAvatar(
                                    //             backgroundColor:
                                    //                 const Color.fromARGB(
                                    //                     255, 255, 255, 255),
                                    //             radius: 12,
                                    //             child: Icon(
                                    //               Icons.remove,
                                    //               color: Colors.green,
                                    //             ),
                                    //           ),
                                    //         ),
                                    //         Padding(
                                    //           padding: const EdgeInsets.symmetric(
                                    //               horizontal: 8.0),
                                    //           child: Text('1'),
                                    //         ),
                                    //         Padding(
                                    //           padding: const EdgeInsets.all(3.0),
                                    //           child: CircleAvatar(
                                    //             backgroundColor: Colors.green,
                                    //             radius: 12,
                                    //             child: Center(
                                    //                 child: Icon(
                                    //               Icons.add,
                                    //               size: 20,
                                    //               color: Colors.white,
                                    //             )),
                                    //           ),
                                    //         ),
                                    //       ],
                                    //     ),
                                    //   ),
                                    // )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                    );
                  }),
            SizedBox(
                height: 20,
              ),
              
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Proceed to Checkout',
                    style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lato'),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      primary: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      elevation: 8,
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}
