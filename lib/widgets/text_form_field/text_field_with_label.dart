import 'package:flutter/material.dart';
import 'package:github_issue_tracker/Helper/colors.dart';
import 'package:github_issue_tracker/utils/sizedbox_extension.dart';
import 'package:github_issue_tracker/widgets/text_form_field/custom_text_field.dart';

class TextFieldWithLabel extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscure;
  final int? maxLine;
  final bool? required;
  final TextStyle? labelStyle;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final bool? readOnly;
  final Function? onTap;
  final String? Function(String?)? onChange;

  const TextFieldWithLabel({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.suffixIcon,
    this.obscure,
    this.maxLine = 1,
    this.required = true,
    this.labelStyle,
    this.validator, this.textInputType, this.readOnly, this.onTap, this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: labelStyle ?? Theme.of(context).textTheme.titleSmall,
            ),
            if (required == true)
              const Text(
                " *",
                style: TextStyle(color: ERROR_500),
              ),
          ],
        ),
        12.kH,
        CustomTextField(
          textInputType: textInputType ?? TextInputType.text,
          obscure: obscure ?? false,
          suffixIcon: suffixIcon,
          hintText: hintText,
          textEditingController: controller,
          maxLine: maxLine ?? 1,
          validator: validator,
          readOnly: readOnly ?? false,
          onChange: onChange,
        ),
        20.kH,
      ],
    );
  }
}
