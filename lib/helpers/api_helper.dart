import 'dart:convert';

import 'package:hackathon/helpers/status_code.dart';
import 'package:http/http.dart' as http;

//* The return type of all API requests will be either Success or Failure.
//* See status_code.dart for more details.
//* It's an warper class for API responses.

class API {
  //* All API requests are made using this method.
  //* It will handle all success and failure responses.
  //* It will handle to pass api_key, api_secret and system_id to all requests.
  static Future<dynamic> post(String url, {Map<String, dynamic>? body}) async {
    //* Add api_key, api_secret and system_id to the request body.

    //* All requests are made using post method.
    final response = await http.post(Uri.parse(url),
        body: jsonEncode(body), headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      return Success(data: jsonDecode(response.body));
    } else {
      try {
        return Failure(
            message: jsonDecode(response.body)['message'],
            data: jsonDecode(response.body));
      } catch (e) {
        return Failure(message: "Something went wrong", data: []);
      }
    }
  }

  static Future<dynamic> get(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Success(data: jsonDecode(response.body));
    } else {
      try {
        return Failure(
            message: jsonDecode(response.body)['message'],
            data: jsonDecode(response.body));
      } catch (e) {
        return Failure(message: "Something went wrong", data: []);
      }
    }
  }
}
