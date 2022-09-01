import 'package:shared_preferences/shared_preferences.dart';

class SharedpPreferenceHelper {
  static String userIdKey = "USERKEY";
  static String userNameKey = "USERNAMEKEY";
  static String displayNameKey = "USERDISPLAYNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userProfileKey = "USERPROFILEKEY";

  saveUserName(String getUsername) async{
    SharedPreferences prefs = await SharedPrederences.getInstance();
    return prefs.setString(userNameKey, getUsername);

  }
}

