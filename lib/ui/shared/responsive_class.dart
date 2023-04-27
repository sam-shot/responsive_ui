import 'package:flutter/material.dart';

class ResponsiveClass extends StatelessWidget {
   final Widget mobile;
   final Widget tablet;
   final Widget desktop;

     const ResponsiveClass({super.key, 
    required this.mobile,
    required this.tablet,
    required this.desktop,
   });

   static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 630;


   static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width >= 630 && MediaQuery.of(context).size.width < 1000;


   static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

   @override
   Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if(constraint.maxWidth >= 1000){
          return desktop;
        } else if(constraint.maxWidth >= 630){
          return tablet;
        } else {
          return mobile;
        }
      } ,
    );
   }

}