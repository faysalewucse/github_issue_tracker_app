import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/controllers/issues_controller.dart';
import 'package:github_issue_tracker/controllers/loader_controller.dart';
import 'package:github_issue_tracker/helper/toast.dart';


class NetworkController extends GetxController {
  final hasConnection = false.obs;
  final Connectivity _connectivity = Connectivity();

  late StreamSubscription _streamSubscription;

  @override
  void onInit() {
    // TODO: implement onInit
    getConnectionType();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateState);
    super.onInit();
  }

  Future<void> getConnectionType() async {
    late List<ConnectivityResult> connectivityResult;
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
    } on PlatformException catch (err) {
      showErrorToast(message: err.message ?? "Error Occurred");
    }
    return _updateState(connectivityResult);
  }

  _updateState(List<ConnectivityResult> connectivityResult) {
    if (connectivityResult.any((result) =>
    result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi ||
        result == ConnectivityResult.ethernet)) {
      hideLoading();
      hasConnection(true);
    } else {
      hasConnection(false);
      showNoInternetDialog(checkInternet: getConnectionType);
    }
  }


  @override
  void onClose() {
    // TODO: implement onClose
    _streamSubscription.cancel();
    super.onClose();
  }
}
