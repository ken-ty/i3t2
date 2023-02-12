import 'dart:convert';
import 'package:http/http.dart' as http;

/// ChatGPT の API クライアント
class ChatGPTApi {
  /// ひとまず API を コールする
  void apiCall() async {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer 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'
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

    try {
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print("try catch でエラー取得 a");
      print(e);
      print("try catch でエラー取得 b");
    }
  }
}
