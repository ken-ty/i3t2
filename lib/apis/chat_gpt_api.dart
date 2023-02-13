import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

/// ChatGPT の API クライアント
class ChatGPTApi {
  /// APIキー
  final String? _apiKey = dotenv.env['CHAT_GPT_API_KEY'];

  /// ひとまず API を コールする
  void apiCall() async {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_apiKey'
    };
    var request = http.Request(
        'POST', Uri.parse('https://api.openai.com/v1/completions'));
    request.body = json.encode({
      "prompt":
          "Convert movie titles into 3 or more emojis. 'Man in fayoum city in egypt'",
      "model": "text-davinci-003",
      "temperature": 0.7,
      "max_tokens": 250,
      "top_p": 1,
      "frequency_penalty": 0,
      "presence_penalty": 0
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
