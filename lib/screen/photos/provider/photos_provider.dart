import 'package:api_calling/screen/photos/model/photos_model.dart';
import 'package:api_calling/utils/helper/api_helper.dart';
import 'package:flutter/material.dart';

class PhotosProvider with ChangeNotifier
{
  List<PhotosModel>? photosList = [];

  Future<void> getPhotosApi()
  async {
    ApiHelper helper = ApiHelper();
    photosList = await helper.getPhotosAPI();
    notifyListeners();
  }
}