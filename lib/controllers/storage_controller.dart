import 'package:get_storage/get_storage.dart';
import 'package:github_issue_tracker/helper/constant.dart';

class StorageController{
  var storage = GetStorage();

  String getAuthToken() {
    return '${storage.read(AUTH_TOKEN)}';
  }

  void setAuthToken({required String token}) {
    storage.write(AUTH_TOKEN, token);
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