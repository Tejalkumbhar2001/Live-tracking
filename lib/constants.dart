import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:geolocation/router.router.dart';
import 'package:shared_preferences/shared_preferences.dart';

getHeight(context) => (MediaQuery.of(context).size.height);
getWidth(context) => (MediaQuery.of(context).size.width);
const kAadharpdf = "AadharCard";
const baseurl = 'https://mobilecrm.erpdata.in';

String apiaddLocation = '$baseurl/api/resource/Employee Location';
String apisalesorder ='$baseurl/api/resource/Sales Order?fields=["name","customer_name","transaction_date","grand_total","status","total_qty"]';
String apiUploadFilePost = '$baseurl/api/method/upload_file';

const String apiurl = 'https://api.openrouteservice.org/v2/directions/driving-car';
const String apiKey = '5b3ce3597851110001cf6248f55d7a31499e40848c6848d7de8fa624';

getRouteUrl(String startPoint, String endPoint){
  return Uri.parse('$apiurl?api_key=$apiKey&start=$startPoint&end=$endPoint');
}
///functions
Future<String> getTocken() async {
  final Future<SharedPreferences> prefs0 = SharedPreferences.getInstance();
  final SharedPreferences prefs = await prefs0;
  String? api_secret = prefs.getString("api_secret") ?? "";
  String? api_key = prefs.getString("api_key") ?? "";
  String formattedString = 'token $api_key:$api_secret';
  return formattedString;
}

Future<String> getUser() async {
  final Future<SharedPreferences> prefs0 = SharedPreferences.getInstance();
  final SharedPreferences prefs = await prefs0;
  String? user = prefs.getString("user") ?? "";
  return user;
}

Future<String> getEmpId() async {
  final Future<SharedPreferences> prefs0 = SharedPreferences.getInstance();
  final SharedPreferences prefs = await prefs0;
  String? employeeId = prefs.getString("employee_id") ?? "";
  return employeeId;
}

Future<String> getlocationid() async {
  final Future<SharedPreferences> prefs0 = SharedPreferences.getInstance();
  final SharedPreferences prefs = await prefs0;
  String? locationId = prefs.getString("locationid") ?? "";
  return locationId;
}

Future<String> getname() async {
  final Future<SharedPreferences> prefs0 = SharedPreferences.getInstance();
  final SharedPreferences prefs = await prefs0;
  String? fullName = prefs.getString("full_name") ?? "";
  return fullName;
}

void logout(BuildContext context) async {
  final Future<SharedPreferences> prefs0 = SharedPreferences.getInstance();
  final SharedPreferences prefs = await prefs0;
  prefs.clear();
  if (context.mounted) {
    Navigator.popAndPushNamed(context, Routes.loginViewScreen);
  }
}

String generateUniqueFileName(File file) {
  // Get the original file name and extension
  String originalFileName = file.path.split('/').last;
  String extension = originalFileName.split('.').last;
  // Generate a unique identifier (You can use any method you prefer)
  String uniqueId = DateTime.now().millisecondsSinceEpoch.toString();
  // Combine the unique identifier with the original extension
  String uniqueFileName = '$uniqueId.$extension';
  return uniqueFileName;
}

bool isImage(File file) {
  List<String> imageExtensions = ['.png', '.jpg', '.jpeg', '.gif', '.bmp'];
  String extension = file.path.split('.').last.toLowerCase();
  return imageExtensions.contains(extension);
}

bool isPDF(File file) {
  String extension = file.path.split('.').last.toLowerCase();
  return extension == '.pdf';
}

Future<File?> compressFile(File file) async {
  // Get the file path.
  final filePath = file.path;

  // Get the file extension.
  final fileExtension = filePath.split('.').last;

  // Create a new file name with the extension "_compressed".
  final compressedFileName =
      filePath.replaceAll(fileExtension, '_compressed.$fileExtension');

  var result = await FlutterImageCompress.compressAndGetFile(
    file.path,
    compressedFileName,
    quality: 60,
    // rotate: 180,
  );

  return fileFromXFile(result ?? XFile(""));
}

// Convert an XFile object to a File object.
File fileFromXFile(XFile xfile) {
  // Get the file path.
  final filePath = xfile.path;
  // Create a File object.
  final file = File(filePath);
  return file;
}
