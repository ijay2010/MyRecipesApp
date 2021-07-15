import 'dart:convert';
import 'package:my_recipes/models/recipe.dart';
import 'package:http/http.dart' as http;


class RecipeApi {

  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.http('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});
    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "4a74eb1b3dmsh1b19329366c2579p1f5ef8jsn4a0c65468b0d",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i ['contnt']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
