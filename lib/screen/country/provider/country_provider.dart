import 'package:api_calling/screen/country/model/country_model.dart';
import 'package:api_calling/utils/helper/api_helper.dart';
import 'package:flutter/material.dart';

class CountryProvider with ChangeNotifier {
  List<CountryModel>? countryList = [];

  Future<void> getCountryApi() async {
    ApiHelper helper = ApiHelper();
    countryList = await helper.getCountryAPI();
    notifyListeners();
  }
}
