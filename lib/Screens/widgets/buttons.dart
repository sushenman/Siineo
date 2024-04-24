import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ElevatedButton customButton({required String text, required Function() onPressed}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 63, 163, 5)),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(horizontal: 17.w, vertical: 0.w)),
      // textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          
        ),

      ),
      // elevation: MaterialStateProperty.all<double>(3.0),
    
    ),
    onPressed: onPressed,
    child: Text(text, style: TextStyle(color: Colors.white, fontSize: 14.sp, letterSpacing: 1.4 )) ,

  );
}
