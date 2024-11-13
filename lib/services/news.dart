import 'package:newsapp/model/article.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-10-12&sortBy=publishedAt&apiKey=aa23a7bff3cf4fcf9b0f67ca98b76790";

    try {
      var response = await http.get(Uri.parse(url));

      // Check if the request was successful
      if (response.statusCode == 200) {
        var jsonData = convert.jsonDecode(response.body);

        // Check if status is 'ok' and if there are articles
        if (jsonData['status'] == 'ok' && jsonData['articles'] != null) {
          jsonData['articles'].forEach((element) {
            // Check each required field for null to prevent exceptions
            if (element['urlToImage'] != null &&
                element['description'] != null &&
                element['title'] != null &&
                element['url'] != null &&
                element['content'] != null) {
              ArticleModel articleModel = ArticleModel(
                title: element['title'],
                description: element['description'],
                url: element['url'],
                urlToImage: element['urlToImage'],
                content: element['content'],
              );
              news.add(articleModel);
            }
          });
          print("Fetched ${news.length} articles");
        } else {
          print("No articles found or API status is not 'ok'");
        }
      } else {
        print("Failed to load news. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
