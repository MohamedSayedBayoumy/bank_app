import 'package:bank_app/peresntation/components/Directionality_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NaturalAppBar extends StatefulWidget implements PreferredSizeWidget {
  dynamic title;
  dynamic color;
  dynamic colorText;
  dynamic elevation;
  dynamic child;
  dynamic customSize;
  dynamic toolbarHeight;
  dynamic heightFlexibleSpace;
  Widget? leading;
  dynamic centerTitle;
  dynamic colorIconDrawer = true;

  List<Widget>? widgets;

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
  State<NaturalAppBar> createState() => _NaturalAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(customSize ?? 80.0);
}

class _NaturalAppBarState extends State<NaturalAppBar> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return DirectionalityComponent(
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: widget.centerTitle == null ? true : false,
        toolbarHeight: widget.toolbarHeight ?? media.height * .1,
        backgroundColor: Colors.indigo,
        elevation: widget.elevation ?? 15.0,
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  // setState(() {
                  //   widget.colorIconDrawer = false ;
                  // });
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Image.asset(
                  "assets/icons/bell.png",
                  width: media.height * .03,
                  color: Colors.white,
                ));
          },
        ),
        actions: widget.widgets,
        flexibleSpace: Container(
          height: widget.heightFlexibleSpace,
          child: Stack(
            children: [
              Positioned(
                  top: media.height * .12,
                  right: media.width * .02,
                  child: Image.asset(
                    'assets/triangular-arrow.png',
                    width: media.height * .05,
                    color: widget.colorIconDrawer == true
                        ? Colors.indigo
                        : Colors.indigo.shade900.withOpacity(.9),
                  ))
            ],
          ),
        ),
        title: Text(
          widget.title,
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

//
// class NaturalAppBar extends StatelessWidget implements PreferredSizeWidget {
//   dynamic title;
//   dynamic color;
//   dynamic colorText;
//   dynamic elevation;
//   dynamic child;
//   dynamic customSize;
//
//   dynamic toolbarHeight;
//   dynamic heightFlexibleSpace;
//   Widget? leading;
//   dynamic centerTitle ;
//   List<Widget>? widgets ;
//
//   NaturalAppBar(
//       {Key? key,
//       this.title,
//       this.elevation,
//       this.leading,
//       this.child,
//       this.color,
//       this.customSize,
//       this.toolbarHeight,
//
//       this.centerTitle,
//       this.heightFlexibleSpace,
//       this.widgets,
//       this.colorText})
//       : super(key: key);
//
//   @override
//   Size get preferredSize => Size.fromHeight(customSize ?? 80.0);
//
//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context).size;
//     return DirectionalityComponent(
//       child: AppBar(
//         automaticallyImplyLeading: false ,
//         centerTitle: centerTitle == null ? true : false  ,
//         toolbarHeight: toolbarHeight ?? media.height*.1,
//         backgroundColor: Colors.indigo,
//         elevation: elevation ?? 15.0,
//         leading: Builder(builder: (context) {
//          return IconButton(
//               onPressed: (){
//                 print("hi") ;
//               Scaffold.of(context).openEndDrawer() ;
//               } ,
//               icon: Image.asset(
//                 "assets/icons/bell.png",
//                 width: media.height*.03,
//               )) ;
//         },)  ,
//         actions: widgets ,
//         flexibleSpace: Container(height: heightFlexibleSpace),
//         title: Text(
//           title,
//           style: TextStyle(
//               fontFamily: 'Ubuntu',
//               fontWeight: FontWeight.bold,
//               fontSize: 25.sp,
//               color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
