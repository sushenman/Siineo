import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siineo/Screens/login.dart';
import 'package:siineo/Screens/widgets/buttons.dart';
import 'package:siineo/Screens/widgets/textformfield.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController Name = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController PhoneNumber = TextEditingController();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
            
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      // width: 300,
                     child: customtextFormField(
                        keyboardType: TextInputType.name,
                        hintText: 'Name',
                        controller: Name,
                        obscureText: false,
                     )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      // width: 300,
                      child: customtextFormField(
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Email',
                        controller: emailController,
                        obscureText: false,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      // width: 300,
                      child: customtextFormField(
                        keyboardType: TextInputType.phone,
                        hintText: 'Phone Number',
                        controller: PhoneNumber,
                        obscureText: false,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      // width: 300,
                      child: customtextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Password',
                        controller: passwordController,
                        obscureText: true,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      // width: 300,
                      child: customtextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Confirm Password',
                        controller: confirmPasswordController,
                        obscureText: true,
                      )
                    ),
                  ),
            
                  SizedBox(height: 20,),
                  customButton(
                    text: 'Register',
                    onPressed: () {
                      print(Name.text);
                      print(emailController.text);
                      print(passwordController.text);
                    }
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Already have an account?', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, letterSpacing: 1.2)),
                      TextButton(
                        onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return Login();
                       } ) );
                        },
                        child: Text('Login', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}