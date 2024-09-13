import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:github_issue_tracker/helper/colors.dart';

class CustomLoader extends StatelessWidget {
  final double size;

  const CustomLoader({super.key, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      size: size,
      color: Theme.of(context).primaryColor,
    );
  }
}
