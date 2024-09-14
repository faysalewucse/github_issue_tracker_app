import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/models/git_user/git_user.dart';

class StorageController{
  var storage = GetStorage();

  String getAuthToken() {
    return '${storage.read(AUTH_TOKEN)}';
  }

  void setAuthToken({required String token}) {
    storage.write(AUTH_TOKEN, token);
  }

  String getUser() {
    return storage.read("user") ?? "";
  }

  void saveUser({required GitUser user}) {
    storage.write("user", jsonEncode(user));
  }

  void removeUser() {
    storage.remove("user");
  }

  void removeAuthToken() {
    storage.write(AUTH_TOKEN, "");
  }

  void setOnBoardVisitedTrue(){
    storage.write("visited", true);
  }

  void saveThemeMode(String themeMode){
    storage.write("themeMode", themeMode);
  }

  String getThemeMode(){
    return storage.read("themeMode") ?? "light";
  }

  bool hasOnBoardVisited(){
    return storage.read("visited") ?? false;
  }
}