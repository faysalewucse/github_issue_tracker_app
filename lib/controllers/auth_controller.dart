import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/controllers/storage_controller.dart';
import 'package:github_issue_tracker/models/git_user/git_user.dart';

class AuthController extends GetxController {
  final isAuthenticated = false.obs;
  final gitUser = const GitUser().obs;


  @override
  void onInit() {
    super.onInit();
    String userObjString = StorageController().getUser();
    if(userObjString.isNotEmpty)
    {
      GitUser user = GitUser.fromJson(jsonDecode(userObjString));
      gitUser(user);
      isAuthenticated(true);
    }
  }

  Future<void> loginWithGitHub() async {
    try {
      GithubAuthProvider githubAuthProvider = GithubAuthProvider();
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithProvider(githubAuthProvider);

      debugPrint("User cre => ${userCredential.additionalUserInfo?.profile}",
          wrapWidth: 1024);

      GitUser user =
          GitUser.fromJson(userCredential.additionalUserInfo?.profile ?? {});

      gitUser(user);
      isAuthenticated(true);
      StorageController().saveUser(user: user);

    } catch (e) {
      print('Error during GitHub OAuth login: $e');
    }
  }

  void logout(){
    isAuthenticated(false);
    StorageController().removeUser();
    gitUser(const GitUser());
  }
}
