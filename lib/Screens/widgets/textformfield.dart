import 'package:flutter/material.dart';

class customtextFormField extends StatelessWidget
{
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  const customtextFormField({required this.hintText, required this.controller, required this.obscureText, required this.keyboardType});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
      child: Container(
        // width: 300,
        child: TextField(
          keyboardType: keyboardType,

          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10),
            labelText: hintText,
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              // color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}