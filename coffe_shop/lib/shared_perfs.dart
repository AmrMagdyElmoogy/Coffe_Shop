import 'package:shared_preferences/shared_preferences.dart';

class SharedPerfs {
  static SharedPreferences sharedPreferences;

  static Future getObject() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setValue(String index, bool value) {
    sharedPreferences.setBool(index, value);
  }

  static bool getValue(String index) {
    if (sharedPreferences.getBool(index) == null) {
      return false;
    }
    return sharedPreferences.getBool(index);
  }

  static removeValue(String index) {
    sharedPreferences.remove(index);
  }
}
