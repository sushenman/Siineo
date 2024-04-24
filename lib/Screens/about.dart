import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About_us extends StatefulWidget {
  const About_us({Key? key});

  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  PageController _pageController = PageController();
  int currentPageIndex = 0;

  void nextPage() {
    if (currentPageIndex < 2) {
      _pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.ease);
      setState(() {
        currentPageIndex++;
      });
    }
  }

  void previousPage() {
    if (currentPageIndex > 0) {
      _pageController.previousPage(
          duration: Duration(milliseconds: 500), curve: Curves.ease);
      setState(() {
        currentPageIndex--;
      });
    }
  }

  Widget buildButtons() {
    return Positioned(
      bottom: 16.0,
      right: 16.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (currentPageIndex > 2)
            ElevatedButton(
              onPressed: previousPage,
              child: Icon(Icons.arrow_upward),
            ),
          SizedBox(width: 10),
          if (currentPageIndex < 3)
            ElevatedButton(
              onPressed: nextPage,
              child: Icon(Icons.arrow_downward),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            children: [
              Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(18.0.sp),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('About Us',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'An experienced and trustworthy authorized distributor, Siineo International Pvt. Ltd. specializes in a variety of vital electrical and power management solutions. Their product line consists of solar hybrid PCUs (Power Conditioning Units), home UPS (Uninterruptible Power Supply) systems, Online UPS, and batteries from well-known manufacturers such as Praxis, Su-kam, and Delta.  Siineo International Pvt. Ltd. is dedicated to providing dependable and superior energy solutions for both business  and residential use.Home UPS systems are among Siineo International Pvt. Ltd.\'s primary products. \n \n They protect delicate appliances and electronics against unplanned power outages by ensuring a  steady power supply during blackouts. When there is a blackout, these systems are made to smoothly transition to battery power so that users may carry on with their regular activities.Furthermore, Siineo International Pvt. Ltd. provides Solar Hybrid PCUs, an environmentally responsible and sustainable solution that combines effective power conditioning with solar power generation. \n ',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Icon(
                        Icons.keyboard_double_arrow_down_rounded,
                        size: 30.sp,
                      ),
                    ),
                  )
                ],
              ),
              // Container(
              //   child: Padding(
              //     padding: const EdgeInsets.all(16.0),
              //     child: ListView(
              //       children: [
              //         Container(
              //           decoration: BoxDecoration(
              //             color: const Color.fromARGB(255, 226, 226, 226),
              //             borderRadius: BorderRadius.circular(10),
              //           ),
              //           height: 200,
              //           child: Padding(
              //             padding: const EdgeInsets.all(18.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text('Mission',
              //                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //                 ),
              //                 SizedBox(
              //                   height: 10,
              //                 ),
              //                 Text(
              //                   'Siineo International Pvt. Ltd. is dedicated to providing cutting-edge electrical and power management solutions to meet the diverse needs of both residential and commercial customers. Our mission is to deliver dependable and superior energy solutions that safeguard delicate electronics, enhance environmental sustainability, and contribute to a reliable power infrastructure.',
              //                   textAlign: TextAlign.justify,
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Container(
              //           decoration: BoxDecoration(
              //             color: const Color.fromARGB(255, 226, 226, 226),
              //             borderRadius: BorderRadius.circular(10),
              //           ),
              //           height: 200,
              //           child: Padding(
              //             padding: const EdgeInsets.all(16.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text('Vision',
              //                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //                 ),
              //                 SizedBox(height: 10,),
              //                 Text(
              //                   'Our vision at Siineo International Pvt. Ltd. is to be a leading force in the electrical and power supply sectors, recognized for innovation, reliability, and environmental responsibility. We aspire to empower individuals and businesses with state-of-the-art solutions that not only meet their energy requirements but also contribute to a greener and sustainable future.',
              //                   textAlign: TextAlign.justify,
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Container(
              //           decoration: BoxDecoration(
              //             color: const Color.fromARGB(255, 226, 226, 226),
              //             borderRadius: BorderRadius.circular(10),
              //           ),
              //           height: 200,
              //           child: Padding(
              //             padding: const EdgeInsets.all(16.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text('Values',
              //                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //                 ),
              //                 SizedBox(height: 10,),
              //                 Text(
              //                   'Siineo International Pvt. Ltd. is driven by a commitment to excellence, emphasizing quality, reliability, and innovation in the field of electrical and power management solutions. We prioritize customer satisfaction through tailored, high-performance offerings while fostering a culture of environmental responsibility, exemplified by our dedication to sustainable practices.',
              //                   textAlign: TextAlign.justify,
              //                 ),
              //                 // SizedBox(height: 10,)
              //               ],
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              Padding(
                padding:  EdgeInsets.only(top: 28.0.w),
                child: Stack(
                  children: [
                
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 18, top: 40),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Contact Us',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 20.h,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Phone Number',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                TextField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    labelText: 'Message',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 63, 163, 5)),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Send Message',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.sp),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Icon(
                      Icons.keyboard_double_arrow_up_outlined,
                      size: 30.sp,
                    ),
                  ),
                )
                  ]),
              ),
            ],
          ),
          // currentPageIndex == 0
          //     ? buildButtons()  // Show buttons at the bottom for the first page
          //     : SizedBox(),  // Hide buttons for other pages
          // Positioned(
          //   top: 16.0,
          //   right: 16.0,
          //   child: currentPageIndex == 2
          //       ? buildButtons()  // Show buttons at the top for the third page
          //       : SizedBox(),  // Hide buttons for other pages
          // ),
        ],
      ),
    );
  }
}
