import 'dart:convert' as convert;
import 'dart:io';
import 'package:flutter_demo/configs/app_config.dart';
import 'package:flutter_demo/helpers/storage_helper.dart';
import 'package:http/http.dart' as http;

class RequestHelper {
  static getHeader() async {
    final token = await StorageHelper.getAccessToken();
    return {
      HttpHeaders.authorizationHeader: "$token",
      // HttpHeaders.contentTypeHeader: "application/json",
      // HttpHeaders.acceptHeader: "application/json"
    };
  }

  static get(String path, {Map<String, String>? queryParameters}) async {
    final uri = Uri.https(AppConfigs.authority, path, queryParameters);
    final header = await getHeader();
    http.Response response = await http.get(uri, headers: header);
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    return progressResponse(jsonResponse);
  }

  static post(String path, Map<String, dynamic> body) async {
    final uri = Uri.https(AppConfigs.authority, path);
    final header = await getHeader();
    http.Response response = await http.post(uri, headers: header, body: body);
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    return progressResponse(jsonResponse);
  }

  static put(String path, Map<String, dynamic> body) async {
    final uri = Uri.https(AppConfigs.authority, path);
    final header = await getHeader();
    http.Response response = await http.put(uri, headers: header, body: body);
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    return progressResponse(jsonResponse);
  }

  static delete(String path, Map<String, dynamic> body) async {
    final uri = Uri.https(AppConfigs.authority, path);
    final header = await getHeader();
    http.Response response =
        await http.delete(uri, headers: header, body: body);
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    return progressResponse(jsonResponse);
  }

  static progressResponse(Map jsonResponse) {
    //TODO: handle networking
    if (jsonResponse["success"] == true) {
      return jsonResponse;
    }
    throw jsonResponse;
  }
}
