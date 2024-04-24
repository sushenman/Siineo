import 'package:flutter/material.dart';
import 'package:siineo/Screens/widgets/textformfield.dart';

class Update_Shipping_Details extends StatefulWidget {
  const Update_Shipping_Details({super.key});

  @override
  State<Update_Shipping_Details> createState() =>
      Update_Shipping_DetailsState();
}

class Update_Shipping_DetailsState extends State<Update_Shipping_Details> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController province = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController district = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Shipping Details',
            style: TextStyle(color: Colors.black)),
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
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text('Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 10,
              ),
              customtextFormField(
                  hintText: 'Enter your name',
                  controller: name,
                  obscureText: false,
                  keyboardType: TextInputType.name),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text('Email',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 10,
              ),
              customtextFormField(
                  hintText: 'Enter your email',
                  controller: email,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                child: Text('Phone Number',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 10,
              ),
              customtextFormField(
                  hintText: 'Enter your phone number',
                  controller: phone,
                  obscureText: false,
                  keyboardType: TextInputType.phone),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                child: Text('Province',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 10,
              ),
              customtextFormField(
                  hintText: 'Enter your province',
                  controller: province,
                  obscureText: false,
                  keyboardType: TextInputType.name),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                child: Text('City',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 10,
              ),
              customtextFormField(
                  hintText: 'Enter your city',
                  controller: city,
                  obscureText: false,
                  keyboardType: TextInputType.name),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text('District',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 10,
              ),
              customtextFormField(
                  hintText: 'Enter your district',
                  controller: district,
                  obscureText: false,
                  keyboardType: TextInputType.name),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(22, 128, 86, 1)),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 50, vertical: 2)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) =>
                    //             Update_Shipping_Details()));
                  },
                  child: Text('Update Profile'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
