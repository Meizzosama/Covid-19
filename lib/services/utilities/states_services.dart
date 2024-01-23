import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/WorldStatesModel.dart';

class StatesServices {
  Future<WorldStatesModel> fetchWorldStatesRecord() async {
    final response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      return WorldStatesModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> countriesList() async {
    var data;
    final response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception('Error');
    }
  }
}
