import 'package:api_calling/screen/user/model/user_model.dart';
import 'package:api_calling/utils/helper/api_helper.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  List<UserModel>? userList = [];

  Future<void> getUserApi() async {
    ApiHelper helper = ApiHelper();
    userList = await helper.getUserAPI();
    notifyListeners();
  }
}
