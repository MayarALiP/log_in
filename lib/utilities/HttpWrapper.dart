import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:log_in/Models/HttpError.dart';

class HttpWrapper {
  Future<String> get(String url, {Map<String, String>? headers}) async {
    var uri = Uri.parse(url);
    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw HttpError(statusCode: response.statusCode, response: response.body);
    }
  }

  Future<String> post(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    HttpClient httpClient = HttpClient();
    HttpClientRequest request = await httpClient.postUrl(Uri.parse(url));

    request.headers.set('Content-type', 'application/json');
    request.headers.set('Accept', 'application/json');
    request.headers
        .set('authorization', 'Basic c3R1ZHlkb3RlOnN0dWR5ZG90ZTEyMw==');

    request.add(utf8.encode(json.encode(body)));
    HttpClientResponse response = await request.close();
    String reply = await response.transform(utf8.decoder).join();
    var jsonReply = json.decode(reply);
    httpClient.close();
    // var response =
    //     await http.post(uri, headers: headers, body: body, encoding: encoding);
    if (response.statusCode == 200 || response.statusCode == 400) {
      return reply;
    } else {
      throw HttpError(
          statusCode: response.statusCode, response: jsonReply.toString());
    }
  }

  // Future post({required body}) async {}
  // Future put() async {}
  // Future delete() async {}
  // Future patch() async {}

}
