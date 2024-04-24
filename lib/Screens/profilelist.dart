import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siineo/Screens/cart.dart';
import 'package:siineo/Screens/dashboard.dart';
import 'package:siineo/Screens/orderlist.dart';
import 'package:siineo/Screens/profiledetails.dart';
import 'package:siineo/Screens/shippingdetails.dart';
import 'package:siineo/Screens/widgets/bottomNav.dart';
import 'package:siineo/Screens/wishlist.dart';

class Profile_List extends StatefulWidget {
  const Profile_List({super.key});

  @override
  State<Profile_List> createState() => _Profile_ListState();
}

class _Profile_ListState extends State<Profile_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => CustomBottomNavigationBar() ) );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: Text('Profile',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
        
            // padding: EdgeInsets.only(bottom: 0.w),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 75, 205, 0),
                      // borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  // height: 180.h,
                  width: double.infinity,
                  child: Padding(
                    padding:  EdgeInsets.only(top: 18.0.w, left: 20.w,bottom: 15.w,right: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Sushen Man Bijukchhe',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: 18.w,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 60.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Completed Order',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Lato',
                                    letterSpacing: 1.2,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Pending Order',
                                    style: TextStyle(
                                       fontSize: 14.sp,
                                      fontFamily: 'Lato',
                                      letterSpacing: 1.2,
                                      color: Colors.white,
                                    )),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard())),
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 255, 255, 255),
                      // borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      leading: Icon(Icons.dashboard),
                      title: Text(
                        'Dashboard',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          letterSpacing: 1.2,
                          fontSize: 16.sp
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                // SizedBox(
                //   height: 10,
                // ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Order_List())),
                  child: Container(
                    decoration: BoxDecoration(
                      // color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      leading: Icon(Icons.list),
                      title: Text(
                        'My Orders',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          letterSpacing: 1.2,
                         fontSize: 16.sp
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                // SizedBox(
                //   height: 10,
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Shipping_details()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      // color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      leading: Icon(Icons.home),
                      title: Text(
                        'Update Shipping Address',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          letterSpacing: 1.2,
                          fontSize: 16.sp
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                // SizedBox(
                //   height: 10,
                // ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Profile_Details())),
                  child: Container(
                    decoration: BoxDecoration(
                      // color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      leading: Icon(Icons.settings),
                      title: Text(
                        'Update Profile',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          letterSpacing: 1.2,
                           fontSize: 16.sp
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                //      GestureDetector(
                //   // onTap: () => Navigator.push(
                //   //     context,
                //   //     MaterialPageRoute(
                //   //         builder: (BuildContext context) => Profile_Details())),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       // color: const Color.fromARGB(255, 255, 255, 255),
                //     ),
                //     child: ListTile(
                //       onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WishList()) ) ,
                //       contentPadding: EdgeInsets.symmetric(horizontal: 20),
                //       leading: Icon(Icons.favorite),
                //       title: Text(
                //         'My Wishlist',
                //         style: TextStyle(
                //           fontFamily: 'Lato',
                //           letterSpacing: 1.2,
                //            fontSize: 16.sp
                //         ),
                //       ),
                //       trailing: Icon(Icons.arrow_forward_ios),
                //     ),
                //   ),
                // ),
                // Divider(
                //   color: Colors.grey,
                //   thickness: 1,
                // ),
                //      GestureDetector(
                //   onTap: () => Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (BuildContext context) => Profile_Details())),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       // color: const Color.fromARGB(255, 255, 255, 255),
                //     ),
                //     child: ListTile(
                //       onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => My_Cart() ) ) ,
                //       contentPadding: EdgeInsets.symmetric(horizontal: 20),
                //       leading: Icon(Icons.shopping_basket_sharp),
                //       title: Text(
                //         'My Cart',
                //         style: TextStyle(
                //           fontFamily: 'Lato',
                //           letterSpacing: 1.2,
                //            fontSize: 16.sp
                //         ),
                //       ),
                //       trailing: Icon(Icons.arrow_forward_ios),
                //     ),
                //   ),
                // ),
                // Divider(
                //   color: Colors.grey,
                //   thickness: 1,
                // ),
                
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    minVerticalPadding: 2,
                    leading: Icon(Icons.file_copy_outlined),
                    title: Text(
                      'Change Password',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        letterSpacing: 1.2,
                       fontSize: 16.sp
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    minVerticalPadding: 2,
                    leading: Icon(Icons.lock_open),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        letterSpacing: 1.2,
                        fontSize: 16.sp
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
