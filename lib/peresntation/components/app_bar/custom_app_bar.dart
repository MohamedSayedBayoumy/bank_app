import 'package:bank_app/peresntation/components/app_bar/appbar_component.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  String title ;
  bool? needIconBell ;
  void Function()? onPressedButtonBell ;
  void Function()? onPressedButtonMenu ;
  void Function()? onPressedButtonBack ;
  dynamic customSize;


  CustomAppBar({required this.needIconBell,this.onPressedButtonBell ,required this.customSize,required this.onPressedButtonMenu,required this.onPressedButtonBack,required this.title ,Key? key}) : super(key: key);


  @override
  Size get preferredSize =>  Size.fromHeight(customSize ?? 90.0);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return NaturalAppBar(
      title: title ,
      centerTitle: false,
      customSize: media.height * .13,
      leading: needIconBell == true ? IconButton(
          onPressed: onPressedButtonBell ,
          icon: Image.asset(
            "assets/icons/bell.png",
            width: media.height*.03,
          )) : null ,
      widgets: [
        IconButton(
            onPressed: onPressedButtonMenu,
            icon: Image.asset(
              "assets/icons/menu.png",
              width: media.width * .06,
            )),
        IconButton(
            onPressed:  onPressedButtonBack ,
            icon: Image.asset(
              "assets/icons/back-arrow.png",
              width: media.width * .06,
            )),
      ],
    );
  }

}
