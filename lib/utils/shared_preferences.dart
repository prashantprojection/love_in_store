import 'package:love_in_store/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  static final SharedPreference _sharedPreference = SharedPreference._init();
  SharedPreference._init();
  factory SharedPreference() => _sharedPreference;

  SharedPreferences? _sharedPreferences;
  get preference async {
    _sharedPreferences ??= await init();
    return _sharedPreferences;
  }

  init() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences;
  }

  setReferenceData(String userName, String token) async {
    SharedPreferences pref = await preference;
    await pref.setString(kUserName, userName);
    await pref.setString(kToken, token);
  }

  getReferenceData() async {
    SharedPreferences pref = await preference;
    return pref.getString(kUserName);
  }
}
