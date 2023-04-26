import 'package:flutter/material.dart';
import 'package:istagram/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  const ResponsiveLayout({Key? key,
    required this.mobileScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return mobileScreenLayout;
        },
    );
  }
}










