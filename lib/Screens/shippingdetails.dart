import 'package:flutter/material.dart';
import 'package:siineo/Screens/updateshippingdetails.dart';

class Shipping_details extends StatefulWidget {
  const Shipping_details({super.key});

  @override
  State<Shipping_details> createState() => _Shipping_detailsState();
}

class _Shipping_detailsState extends State<Shipping_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text('Shipping Details', style: TextStyle(color: Colors.black)),
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
        body: Container(
            child: ListView(children: [
          details(title: 'Name', data: 'Sushen Man Bijukchhe'),
          details(title: 'Email', data: 'email@email.com'),
          details(title: 'Phone Number', data: '9087654321'),
          details(title: 'province', data: 'Province 3'),
          details(title: 'City', data: 'Kathmandu'),
          details(title: 'District', data: 'Bagmati'),

          SizedBox(
            height: 20,
          ),
           Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(22, 128, 86, 1)),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 50, vertical: 2)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Update_Shipping_Details() ));
                  },
                  child: Text('Update Profile'),
                ),
              )
        ])));
  }
}

class details extends StatelessWidget {
  final String title;
  final String data;

  const details({super.key, required this.data, required this.title});

  @override
  Widget build(Object context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      child: Container(
        // height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(13),
            // border: Border.all(
            //   color: Colors.black,
            //   width: 0.5,
            // ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 0,
                  offset: Offset(0, 1),
                  color: Colors.grey)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text('${title}',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 20,
              ),
              Text('$data',
                  style: TextStyle(
                      fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0))),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
