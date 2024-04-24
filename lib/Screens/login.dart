import 'package:flutter/material.dart';
import 'package:siineo/Screens/homescreen.dart';
import 'package:siineo/Screens/register.dart';
import 'package:siineo/Screens/widgets/bottomNav.dart';
import 'package:siineo/Screens/widgets/textformfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});


  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('assets/images/login.png', width: 200, height: 200, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Lato',
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
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
                      // child: TextField(
                      //   controller: emailController,
                      //   decoration: InputDecoration(
                      //     hintText: 'Email',
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(20),
                      //     ),
                      //   ),
                      // ),
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
                      // child: TextField(
                      //   controller: passwordController,
                      //   decoration: InputDecoration(
                      //     hintText: 'Password',
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(20),
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 63, 163, 5)),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                        )
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CustomBottomNavigationBar()));
                        print(emailController.text);
                        print(passwordController.text);
                      },
                      child: Text('Login'),
                    ),
                  ),
                  //forgot password 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Text('Don\'t have an account?'),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                              },
                              child: Text('Sign Up'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
             
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}