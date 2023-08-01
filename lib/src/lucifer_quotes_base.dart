import 'package:http/http.dart' as http;
import 'dart:convert';

class LuciferQuotes {
  final String api = "https://lucifer-quotes.vercel.app/api";
  final Map<String, String> headers = {
    "user-agent":
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36"
  };

  Future<Map<String, dynamic>> getRandomQuote() async {
    final response = await http.get(Uri.parse("$api/quotes"), headers: headers);
    if (response.statusCode != 200) {
      throw Exception(
          "Failed to get multiple quotes. Status code: ${response.statusCode}");
    }
    final jsonData = json.decode(response.body);
    return jsonData[0];
  }

  Future<List<Map<String, dynamic>>> getMultipleQuotes(int count) async {
    if (count <= 0) {
      return [];
    }
    final response =
        await http.get(Uri.parse("$api/quotes/$count"), headers: headers);

    if (response.statusCode != 200) {
      throw Exception(
          "Failed to get multiple quotes. Status code: ${response.statusCode}");
    }
    final jsonData = json.decode(response.body);
    return List<Map<String, dynamic>>.from(jsonData);
  }
}
