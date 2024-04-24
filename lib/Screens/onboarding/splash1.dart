import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siineo/Screens/homescreen.dart';
import 'package:siineo/Screens/login.dart';
import 'package:siineo/Screens/register.dart';
import 'package:siineo/Screens/widgets/bottomNav.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoarding_1State();
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
//create a path from bottom
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.3, size.height * 0.3, size.width * 1, size.height * 0.0);
    // path.quadraticBezierTo(
    //     size.width * 0.6, size.height * 0.4, size.width, size.height* 0.6);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    // throw UnimplementedError();
    return false;
  }
}

class _OnBoarding_1State extends State<OnBoarding> {
  PageController pageController = PageController();

  int currentPage = 0;
  changePage() {
    pageController.animateToPage(currentPage,
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            // color:  Color.fromARGB(255, 86, 219, 9),
            // width: double.infinity ,

            ),
        PageView(
          controller: pageController,
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.0.w, bottom: 40.w),
                  child: Center(
                    child: Image.asset(
                      'assets/images/onboarding.png',
                      height: 400.h,
                      width: 300.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Center(child: Image.asset('assets/images/Find.png', height: 300.h, width: 300.w,)),
                // ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 100),
                      child: Text(
                        'Discover',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 30.sp,
                            letterSpacing: 1.2,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom:70),
                      child: Text(
                        'Everything you are looking for ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18.sp,
                            fontFamily: 'Lato',
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 18.0, bottom: 80),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 212, 17, 17),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        onPressed: () {
                          currentPage = 1;
                          changePage();
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
                ),
              ]),
            ),
            Container(
              child: Stack(children: [
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Center(child: Image.asset('assets/images/Find.png', height: 300.h, width: 300.w,)),
                // ),
                 Padding(
                  padding: EdgeInsets.only(left: 15.0.w, bottom: 40.w, right: 15.w),
                  child: Center(
                    child: Image.asset(
                      'assets/images/prem.png',
                      height: 400.h,
                      // width: 400.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 100),
                      child: Text(
                        'Premium',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 30.sp,
                            letterSpacing: 1.2,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 70),
                      child: Text(
                        'Products',
                        style: TextStyle(
                            letterSpacing: 1.2,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 30.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 18.0, bottom: 85),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 212, 17, 17),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        onPressed: () {
                          currentPage = 2;
                          changePage();
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
                ),
              ]),
            ),
            Container(
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0.w, bottom: 0.w, right: 15.w,top: 0.w),
                  child: Center(
                    child: Image.asset(
                      'assets/images/welcome.png',
                      height: 400.h,
                      // width: 400.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Center(child: Image.asset('assets/images/Find.png', height: 300.h, width: 300.w,)),
                // ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 280.w),
                      child: Text(
                        'Let\'s Get Started',
                        style: TextStyle(
                            letterSpacing: 1.2,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 30.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Login())),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 90.w),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 50,
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18.sp,
                              letterSpacing: 1.2,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Register()) ),
                    child: Container(
                      child: Padding(
                          padding:  EdgeInsets.only(bottom: 30),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18.sp,
                                    letterSpacing: 1.2,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(border: Border.all()),
                          )),
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ]),
    );
  }
}
