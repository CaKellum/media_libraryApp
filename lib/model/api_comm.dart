import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiComunication {
  Future<Map<String, dynamic>> requestGet(String url) async {
    http.Response source = await http.get(Uri.parse(url));
    if (source.statusCode > 299) {
      throw Exception(
          'Failed to retrive data from $url with error ${source.toString()}');
    }
    return jsonDecode(source.body);
  }

  requestPost(Map<String, dynamic> source, String url) {
    http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(source),
    );
  }

  requestPut(Map<String, dynamic> source, String url) {
    http.put(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(source),
    );
  }

  requestDelete(String url) {
    http.delete(Uri.parse(url));
  }
}
