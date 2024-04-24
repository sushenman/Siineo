import 'package:flutter/material.dart';
import 'package:siineo/Screens/widgets/buttons.dart';
import 'package:siineo/Screens/widgets/textformfield.dart';

class Update_Profile_Details extends StatefulWidget {
  const Update_Profile_Details({super.key});

  @override
  State<Update_Profile_Details> createState() => _Update_Profile_DetailsState();
}

class _Update_Profile_DetailsState extends State<Update_Profile_Details> {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Update Profile', style: TextStyle(color: Colors.black)),
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Name',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
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
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                customtextFormField(
                    hintText: 'Enter your email',
                    controller: name,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress),

                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Phone',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                customtextFormField(
                    hintText: 'Enter your phone number',
                    controller: name,
                    obscureText: false,
                    keyboardType: TextInputType.number),

                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [Text('PAN no')],
                ),
                SizedBox(
                  height: 10,
                ),
                customtextFormField(
                    hintText: 'Enter your PAN number',
                    controller: name,
                    obscureText: false,
                    keyboardType: TextInputType.number),
                SizedBox(
                  height: 10,
                ),
                customButton(text: 
               'Update' , onPressed: (){})
              ]),
            ),
          ]),
        ));
  }
}
