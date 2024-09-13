import 'package:flutter/material.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/widgets/loaders/custom_loader.dart';

class PrimaryButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? fontSize;
  final String label;
  final Color? color;
  final Function onTap;
  final Color? borderColor;
  final Color? labelColor;
  final bool? loading;
  final bool? small;
  final Widget? icon;

  const PrimaryButton(
      {super.key,
        required this.label,
        required this.onTap,
        this.fontSize,
        this.small,
        this.height = 48,
        this.width,
        this.color,
        this.borderColor,
        this.labelColor,
        this.loading = false,
        this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (loading == false) {
          onTap();
        }
      },
      child: Opacity(
        opacity: loading == true ? 0.5 : 1,
        child: Container(
          height: height,
          width: width ?? deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: small == true ? 12 : 24, vertical: small == true ? 4 : 8),
          decoration: BoxDecoration(
              color: color ?? PRIMARY_COLOR,
              borderRadius: rounded2,
              border: Border.all(color: borderColor ?? Colors.transparent)),
          child: Center(
            child: loading == true
                ? const CustomLoader(
              size: 30,
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(margin: EdgeInsets.only(right: icon == null ? 0 : 10), child: icon,),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: fontSize ?? 14,
                    color: labelColor ?? WHITE,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
