import 'package:flutter/material.dart';
import 'package:siineo/Screens/login.dart';
import 'package:siineo/Screens/onboarding/splash1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;
Future <void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt("initScreen");
  await preferences.setInt('initScreen', 1 );
  Future.delayed (const Duration(milliseconds: 2000), () {
    runApp(const MyApp());
  });
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: false,
        ),
     initialRoute: initScreen ==0 || initScreen == null ? 'onboarding' : 'Login',
        routes: {
          'onboarding': (context) =>  OnBoarding(),
          // 'onboarding': (context) => const Onboarding(),
          'Login': (context) => const Login(),
        },
      //  home: OnBoarding()
      ),
    );
  }
}
