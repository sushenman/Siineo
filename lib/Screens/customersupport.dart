import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siineo/Screens/complainform.dart';
import 'package:siineo/Screens/widgets/bottomNav.dart';
import 'package:siineo/Screens/widgets/textformfield.dart';
import 'package:image_picker/image_picker.dart';

class support extends StatefulWidget {
  const support({super.key});

  @override
  State<support> createState() => _supportState();
}

class _supportState extends State<support> {
  List<String> StateNames = [
    'Select Province',
    'Koshi Pradesh',
    'Madhesh Pradesh',
    'Bagmati Pradesh',
    'Gandaki Pradesh',
    'Lumbini Pradesh',
    'Karnali Pradesh',
    'Sudurpashchim Pradesh',
  ];
  List<String> Category = [
    'Select Category',
    'Inverter',
    'Online UPS',
    'Tubular Battery',
  ];
  String selectedImagePath = '';
  String selectedImagePath2 = '';
  String selectedImagePath3 = '';
  final ImagePicker _imagePicker = ImagePicker();
  TextEditingController Name = TextEditingController();

  Future<void> _pickImage(int imageNumber) async {
    final XFile? pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        if (imageNumber == 1) {
          selectedImagePath = pickedFile.path;
        } else if (imageNumber == 2) {
          selectedImagePath2 = pickedFile.path;
        } else if (imageNumber == 3) {
          selectedImagePath3 = pickedFile.path;
        }
      });
    }
    // selectedImagePath='';
  }

  @override
  Widget build(BuildContext context) {
    String selectedCategory = StateNames.isNotEmpty ? StateNames[0] : '';
    String selectedCategory1 = Category.isNotEmpty ? Category[0] : '';
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) 
            {
              return CustomBottomNavigationBar();
            } ) );
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Customer Support',
          style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato',
              letterSpacing: 1),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: 18.0, top: 10),
              //   child: Text(
              //     'Personal Information',
              //     style: TextStyle(
              //         fontFamily: 'Lato',
              //         fontSize: 20,
              //         fontWeight: FontWeight.w500,
              //         letterSpacing: 1),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(18.0),
              //   child: Container(
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Container(
              //           child: customtextFormField(
              //             keyboardType: TextInputType.name,
              //             hintText: 'First Name',
              //             controller: Name,
              //             obscureText: false,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         customtextFormField(
              //           keyboardType: TextInputType.name,
              //           hintText: 'Last Name',
              //           controller: Name,
              //           obscureText: false,
              //         ),
              //         // TextField(
              //         //   decoration: InputDecoration(
              //         //     hintText: 'Last Name',
              //         //     contentPadding: EdgeInsets.only(left: 9),
              //         //     border: OutlineInputBorder(
              //         //       borderRadius: BorderRadius.circular(14),
              //         //     ),
              //         //   ),
              //         // ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         customtextFormField(
              //           keyboardType: TextInputType.name,
              //           hintText: 'Email',
              //           controller: Name,
              //           obscureText: false,
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         customtextFormField(
              //           keyboardType: TextInputType.name,
              //           hintText: 'Phone Number',
              //           controller: Name,
              //           obscureText: false,
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(bottom: 8.0),
              //           child: Text('Address Details',
              //               style: TextStyle(
              //                   fontFamily: 'Lato',
              //                   fontSize: 20,
              //                   fontWeight: FontWeight.w500,
              //                   letterSpacing: 1)),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Container(
              //           decoration: BoxDecoration(
              //             color: const Color.fromARGB(0, 255, 255, 255),
              //             border: Border.all(
              //               color: Colors.grey,
              //             ),
              //             borderRadius: BorderRadius.circular(14),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.only(left: 9.0),
              //             child: DropdownButton(
              //               underline: SizedBox(),
              //               isExpanded: true,
              //               hint: Text('Category'),
              //               value: selectedCategory,
              //               items: StateNames.map((category) {
              //                 return DropdownMenuItem(
              //                   child: Text(category),
              //                   value: category,
              //                 );
              //               }).toList(),
              //               onChanged: (value) {
              //                 setState(() {});
              //               },
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         customtextFormField(
              //           keyboardType: TextInputType.name,
              //           hintText: 'City',
              //           controller: Name,
              //           obscureText: false,
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         customtextFormField(
              //           keyboardType: TextInputType.name,
              //           hintText: 'Address',
              //           controller: Name,
              //           obscureText: false,
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         customtextFormField(
              //           keyboardType: TextInputType.name,
              //           hintText: 'Street',
              //           controller: Name,
              //           obscureText: false,
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Text('Product Category',
              //             style: TextStyle(
              //                 fontFamily: 'Lato',
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.w500,
              //                 letterSpacing: 1)),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Container(
              //           decoration: BoxDecoration(
              //             color: const Color.fromARGB(0, 255, 255, 255),
              //             border: Border.all(
              //               color: Colors.grey,
              //             ),
              //             borderRadius: BorderRadius.circular(14),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.only(left: 9.0),
              //             child: DropdownButton(
              //               underline: SizedBox(),
              //               isExpanded: true,
              //               hint: Text('Category'),
              //               value: selectedCategory1,
              //               items: Category.map((cat) {
              //                 return DropdownMenuItem(
              //                   child: Text(cat),
              //                   value: cat,
              //                 );
              //               }).toList(),
              //               onChanged: (value) {
              //                 setState(() {});
              //               },
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         customtextFormField(
              //           keyboardType: TextInputType.name,
              //           hintText: 'Product Name',
              //           controller: Name,
              //           obscureText: false,
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         TextField(
              //           decoration: InputDecoration(
              //             contentPadding: EdgeInsets.only(left: 9),
              //             hintText: 'Purchase Date',
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(14),
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         customtextFormField(
              //           keyboardType: TextInputType.name,
              //           hintText: 'Product Serial Number',
              //           controller: Name,
              //           obscureText: false,
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Container(
              //           decoration: BoxDecoration(
              //             color: const Color.fromARGB(0, 255, 255, 255),
              //             border: Border.all(
              //               color: Colors.grey,
              //             ),
              //             borderRadius: BorderRadius.circular(14),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.only(left: 9.0),
              //             child: DropdownButton(
              //               underline: SizedBox(),
              //               isExpanded: true,
              //               hint: Text('Category'),
              //               value: selectedCategory1,
              //               items: Category.map((cat) {
              //                 return DropdownMenuItem(
              //                   child: Text(cat),
              //                   value: cat,
              //                 );
              //               }).toList(),
              //               onChanged: (value) {
              //                 setState(() {});
              //               },
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Text('Verification Details',
              //             style: TextStyle(
              //                 fontFamily: 'Lato',
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.w500,
              //                 letterSpacing: 1)),
              //         SizedBox(
              //           height: 30,
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Column(
              //               children: [
              //                 Text('Warrenty Card',
              //                     style: TextStyle(
              //                         fontFamily: 'Lato',
              //                         fontSize: 16,
              //                         fontWeight: FontWeight.w500,
              //                         letterSpacing: 1)),

              //                       Container(
              //                 height: 140,
              //                 width: 140,
              //                 decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   borderRadius: BorderRadius.circular(14),
              //                 ),
              //                 child: selectedImagePath2.isNotEmpty
              //                     ? Image.file(
              //                         File(selectedImagePath2),
              //                         fit: BoxFit.cover,
              //                       )
              //                     : Center(
              //                         child: IconButton(
              //                           icon: Icon(Icons.add_a_photo),
              //                           onPressed: () => _pickImage(2),
              //                         ),
              //                       ),
              //                                     ),
              //               ],
              //             ),

              //             Column(
              //               children: [
              //                 Text('Biling Card',
              //                     style: TextStyle(
              //                         fontFamily: 'Lato',
              //                         fontSize: 16,
              //                         fontWeight: FontWeight.w500,
              //                         letterSpacing: 1)),
              //                             Container(
              //                 height: 140,
              //                 width: 140,
              //                 decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   borderRadius: BorderRadius.circular(14),
              //                 ),
              //                 child: selectedImagePath.isNotEmpty
              //                     ? Image.file(
              //                         File(selectedImagePath),
              //                         fit: BoxFit.cover,
              //                       )
              //                     : Center(
              //                         child: IconButton(
              //                           icon: Icon(Icons.add_a_photo),
              //                           onPressed: () => _pickImage(1),
              //                         ),
              //                       ),
              //                                     ),
              //               ],
              //             ),
              //           ],
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
              // Container(
              //   // padding: EdgeInsets.all(10),
              //   margin: EdgeInsets.all(20),
              //   width: MediaQuery.of(context).size.width,
              //   height: 40,
              //   decoration: BoxDecoration(
              //     color: Colors.blue,
              //     borderRadius: BorderRadius.circular(14),
              //   ),
              //   child: Center(
              //     child: Text(
              //       'Submit',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Color.fromARGB(255, 241, 241, 241)
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      // Container(
                      //   decoration: BoxDecoration(
                      //     // color: Colors.black,
                      //      borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child: Padding(
                      //     padding:  EdgeInsets.symmetric(vertical: 15.0.w, horizontal: 10.0.w),
                      //     child: Center(
                      //       child: Text(
                      //         'Company Policy',
                      //         style: TextStyle(
                      //           color: const Color.fromARGB(255, 0, 0, 0),
                      //             fontSize: 20.sp,
                      //             fontWeight: FontWeight.w500,
                      //             fontFamily: 'Lato',
                      //             letterSpacing: 1),
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      // SizedBox(height: 10.w,),
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            // color: Color.fromARGB(255, 242, 242, 242)
                            ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 0.7))),
                              child: ListTile(
                                title: Text(
                                  'Terms and Conditions',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Lato',
                                      letterSpacing: 1),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 0.7))),
                              child: ListTile(
                                title: Text('Return Policy',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Lato',
                                        letterSpacing: 1)),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 0.7))),
                              child: ListTile(
                                title: Text('Dealer Policy',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Lato',
                                        letterSpacing: 1)),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 0.7))),
                              child: ListTile(
                                title: Text('Privacy Policy',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Lato',
                                        letterSpacing: 1)),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 0.7))),
                              child: ListTile(
                                title: Text('Payment Policy',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Lato',
                                        letterSpacing: 1)),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                            ListTile(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Complain_Form())),
                              title: Text('Complain Form',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Lato',
                                      letterSpacing: 1)),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Padding(
              //   padding: EdgeInsets.all(10.w),
              //   child: Container(
              //     padding: EdgeInsets.all(10),
              //     height: 48.h,
              //     width: MediaQuery.of(context).size.width ,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: const Color.fromARGB(255, 230, 230, 230)),
              //     child: Text('Complain Form',
              //         style: TextStyle(
              //             fontWeight: FontWeight.w500,
              //             fontFamily: 'Lato',
              //             letterSpacing: 1)),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
