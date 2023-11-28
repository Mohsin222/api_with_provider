//function to check if user is logged in or not
import 'package:shared_preferences/shared_preferences.dart';

//store the value of login user id in shared preferences
Future<void> storeUserIdInSharedPref(String userId) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('userId', userId);
}

//get the value of login user id from shared preferences
Future<String> getUserIdFromSharedPref() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('userId')!;
}

//store the value of login user token in shared preferences
Future<void> storeUserTokenInSharedPref(String token) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('token', token);
}

//get the value of login user token from shared preferences
Future<String> getUserTokenFromSharedPref() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token') ?? '';
}

//store the value of login user role in shared preferences
Future<void> storeUserRoleInSharedPref(String role) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('role', role);
}

//get the value of login user role from shared preferences
Future<String> getUserRoleFromSharedPref() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('role') ?? '';
}
