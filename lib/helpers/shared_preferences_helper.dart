import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  final String _kCountryCodePrefs = "countryCode";
  final String _kCountryNamePrefs = "countryName";

  // Method that returns the last selected country code
  Future<String> getCountryCode() async {
    print("getCountryCode");
    final SharedPreferences countryCodePrefs = await SharedPreferences.getInstance();

    return countryCodePrefs.getString(_kCountryCodePrefs) ?? "US";
  }

  // Method that saves the last selected country code
  Future<bool> setCountryCode(String countryCode) async {
    print("setSetCountryCode" + countryCode);
    final SharedPreferences countryCodePrefs = await SharedPreferences.getInstance();

    return countryCodePrefs.setString(_kCountryCodePrefs, countryCode);
  }

  // Method that returns the last selected country name
  Future<String> getCountryName() async {
    print("getCountryName");
    final SharedPreferences countryNamePrefs = await SharedPreferences.getInstance();

    return countryNamePrefs.getString(_kCountryNamePrefs) ?? 'United States';
  }

  // Method that saves the last selected country name
  Future<bool> setCountryName(String countryName) async {
    print("setCountryName" + countryName);
    final SharedPreferences countryNamePrefs = await SharedPreferences.getInstance();

    return countryNamePrefs.setString(_kCountryNamePrefs, countryName);
  }
}
