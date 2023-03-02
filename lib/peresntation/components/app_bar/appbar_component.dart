import 'package:bank_app/peresntation/components/Directionality_component.dart';
import 'package:bank_app/peresntation/screens/login&register_screens/LoginScreen_screen.dart';
import 'package:bank_app/peresntation/screens/last_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NaturalAppBar extends StatelessWidget implements PreferredSizeWidget {
  dynamic title;
  dynamic color;
  dynamic colorText;
  dynamic elevation;
  dynamic child;
  dynamic customSize;

  dynamic toolbarHeight;
  dynamic heightFlexibleSpace;
  Widget? leading;
  dynamic centerTitle ;
  List<Widget>? widgets ;

  NaturalAppBar(
      {Key? key,
      this.title,
      this.elevation,
      this.leading,
      this.child,
      this.color,
      this.customSize,
      this.toolbarHeight,

      this.centerTitle,
      this.heightFlexibleSpace,
      this.widgets,
      this.colorText})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(customSize ?? 80.0);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return DirectionalityComponent(
      child: AppBar(
        centerTitle: centerTitle == null ? true : false  ,
        toolbarHeight: toolbarHeight ?? media.height*.1,
        backgroundColor: Colors.indigo,
        elevation: elevation ?? 15.0,
        leading: leading  ,
        actions: widgets ,
        flexibleSpace: Container(height: heightFlexibleSpace),
        title: Text(
          title,
          style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.sp,
              color: Colors.white),
        ),
      ),
    );
  }
}
