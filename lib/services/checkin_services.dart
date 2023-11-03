import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';

import '../constants.dart';
import '../model/gelocation_model.dart';

class CheckinServices{
  Future<bool> addlocation(GeolocationModel designation) async {
    var data = json.encode({
      "data": designation,
    });

    try {
      var dio = Dio();
      var response = await dio.request(
        apiaddLocation,
        options: Options(
          method: 'POST',
          headers: {'Authorization': await getTocken()},
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        Fluttertoast.showToast(msg: "location Added Successfully");
        return true;
      } else {
        Fluttertoast.showToast(msg: "UNABLE TO add location!");
        return false;
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Error accoured $e ");
      Logger().e(e);
    }
    return false;
  }

  Future<bool> updatelocation(GeolocationModel designation) async {
    var data = json.encode({
      "data": designation,
    });

    try {
      var dio = Dio();
      var response = await dio.request(
        '$baseurl/api/resource/Employee Location/${designation.name.toString()}',
        options: Options(
          method: 'PUT',
          headers: {'Authorization': await getTocken()},
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        Fluttertoast.showToast(msg: "location updated Successfully");
        return true;
      } else {
        Fluttertoast.showToast(msg: "UNABLE TO update location!");
        return false;
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Error accoured $e ");
      Logger().e(e);
    }
    return false;
  }
}