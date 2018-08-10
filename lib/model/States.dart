import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:bloc_pattern_company/model/StatesResponseModel.dart';

class API {
  var statesUrl = "http://34.239.127.83:8081/admin/state";
  StatesResponse response;

  Future<StatesResponse> fetchStates() async {
    print("comes in future");
    await http
        .get(statesUrl)
        .then((response) => response.body)
        .then(json.decode)
        .then((json) => response = StatesResponse.fromJson(json));
    return response;
  }
}
