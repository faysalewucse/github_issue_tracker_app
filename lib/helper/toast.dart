import 'package:flutter/material.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:toastification/toastification.dart';

void showToast({required String message, bool success = false}) {
  toastification.show(
    title: Text(success ? "Success" : "Error", style: TextStyle(color: success ? WHITE : BLACK),),
    description: Text(message),
    foregroundColor: success ? WHITE : BLACK,
    alignment: Alignment.bottomCenter,
    showProgressBar: false,
    style: ToastificationStyle.fillColored,
    type: success ? ToastificationType.success : ToastificationType.error,
    primaryColor: success ? PRIMARY_COLOR : WHITE,
    autoCloseDuration: const Duration(seconds: 5),
  );
}

void showSuccessToast({required String message}) {
  showToast(message: message, success: true);
}

void showErrorToast({required String message}) {
  showToast(message: message, success: false);
}