import 'dart:convert';
import 'package:http/http.dart' show Client;
import '../models/item_model.dart';

final _baseUrl = 'https://hacker-news.firebaseio.com/v0';

class NewsApiProvider {

  Client client = Client();

  fetchTopIds() async {
    final response = await client.get('$_baseUrl/topstories.json');
    final ids = json.decode(response.body);

    return ids;
  }

  fetchItem(int id) async {
    final response = await client.get('$_baseUrl/item/$id.json');
    final parsedJson = json.decode(response.body);

    return ItemModel.fromJson(parsedJson);
  }
}