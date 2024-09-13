import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/utils/sizedbox_extension.dart';
import 'package:github_issue_tracker/widgets/buttons/primary_button.dart';
import 'package:github_issue_tracker/widgets/loaders/custom_loader.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogHelper {
  //show error dialog
  static void showErrorDialog({String title = 'Error', String? description = 'Something went wrong'}) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
              ),
              Text(
                description ?? '',
              ),
              ElevatedButton(
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: const Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showNoInternetDialog({required Function checkInternet}) {
    Get.dialog(
      barrierDismissible: false,
      Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: rounded2
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(PhosphorIcons.wifi_slash, color: PRIMARY_COLOR, size: 50,),
              20.kH,
              Text("No Internet connection found", style: GoogleFonts.poppins(color: NEUTRAL_N700)),
              Text("Check your connection", style: GoogleFonts.poppins(color: NEUTRAL_N700)),
              32.kH,
              PrimaryButton(label: "Try Again", onTap: (){
                hideLoading();
                checkInternet();
              })
            ],
          ),
        ),
      ),
    );
  }
  
  static void showLoading([String? message]) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: rounded2
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomLoader(),
              const SizedBox(height: 8),
              Text(message ?? 'Loading...'),
            ],
          ),
        ),
      ),
    );
  }

  //hide loading
  static void hideLoading({int? id}) {
    if (Get.isDialogOpen!) Get.back(id: id);
  }
  
}