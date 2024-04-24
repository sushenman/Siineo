import 'package:flutter/material.dart';
import 'package:siineo/Screens/orderdetails.dart';

class Order_List extends StatefulWidget {
  const Order_List({super.key});

  @override
  State<Order_List> createState() => _Order_ListState();
}

class _Order_ListState extends State<Order_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: Text('Orders',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: 'Pending ',
                  ),
                  Tab(
                    text: 'Processing ',
                  ),
                 
                  Tab(
                    text: 'Cancelled ',
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  buildTabContent('Pending'),
                  buildTabContent('Processing'),
                  // buildTabContent('Complete'),
                  buildTabContent('Cancelled'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabContent(String status) {
    // Replace this with your dynamic content based on the status
    return 
    ListView.builder(
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Order_Details() ) );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 12, top: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  // BoxShadow(
                  //   color: Colors.grey.withOpacity(0.5),
                  //   spreadRadius: 0.5,
                  //   blurRadius: 0.5,
                  //   offset:
                  //       Offset(0, 2), // changes position of shadow
                  // ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 9),
                        child: Row(
                          children: [
                            Text(
                              ' Order Id: ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Ubuntu'),
                            ),
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Row(
                          children: [
                            Text(
                              'Rs. \$ 1000',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 9.0, top: 9, bottom: 6),
                        child: Text(
                          'Order Time: 2/28/2024  ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Ubuntu'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.history,
                              color: statusColor(status),
                              size: 10,
                            ),
                            Text(
                              ' $status',
                              style: TextStyle(
                                  color: statusColor(status) ,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
  Color statusColor(String status) {
  // Define colors based on status
  switch (status) {
    case 'Pending':
      return Colors.red;
    case 'Processing':
      return Colors.orange;
    case 'Complete':
      return Colors.green;
    case 'Cancelled':
      return Colors.grey;
    default:
      return Colors.black;
  }
}
}
