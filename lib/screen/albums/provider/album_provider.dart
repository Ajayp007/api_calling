import 'package:api_calling/screen/albums/model/album_model.dart';
import 'package:api_calling/utils/helper/api_helper.dart';
import 'package:flutter/material.dart';

class AlbumProvider with ChangeNotifier {
  List<AlbumModel>? albumList = [];

  Future<void> getAlbumApi() async {
    ApiHelper helper = ApiHelper();
    albumList = await helper.getAlbumAPI();
    notifyListeners();
  }
}
