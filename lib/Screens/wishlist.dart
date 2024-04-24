import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20.sp,
          ),
        ),
        */
        title: Text('WishList',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(
                    'Product Name ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lato',
                        letterSpacing: 1.1,
                        overflow: TextOverflow.ellipsis),
                  ),
                  subtitle: Text('Rs 1000',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 139, 139, 139),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Lato',
                        letterSpacing: 1.1,
                      )),
                  leading: Image.asset(
                    'assets/images/1.png',
                    width: 60.w,
                    height: 60.w,
                    fit: BoxFit.contain,
                  ),
                  trailing: Container(
                    width: 60.w,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            splashRadius: 20,
                            // splashColor: Colors.black87,
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart,
                              size: 20.sp,
                            )),
                        IconButton(
                            splashRadius: 20,
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {},
                            icon: Icon(Icons.delete, size: 20.sp))
                      ],
                    ),
                  ));
            }),
      ),
    );
  }
}
