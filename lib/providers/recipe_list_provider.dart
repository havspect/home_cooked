// Necessary for code-generation to work
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/recipe.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:http/http.dart' as http;

part 'recipe_list_provider.g.dart';

@riverpod
class RecipeList extends _$RecipeList {
  Future<List<Recipe>> _getAllRecipes() async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      final res = await pb.collection('recipes').getList();

      final recipes =
          res.items.map((e) => Recipe.fromJson(e.toJson())).toList();

      return recipes;
    } catch (e) {
      // ignore: avoid_print
      rethrow;
    }
  }

  @override
  Future<List<Recipe>> build() async {
    return await _getAllRecipes();
  }

  Future<void> addRecipe(NewRecipe recipe, Uint8List imageBytes) async {
    final PocketBase pb = getIt<PocketBase>();

    List<http.MultipartFile> image;

    // if (imageBytes.isEmpty) {
    // if (kIsWeb) {
    //   image = [await http.MultipartFile.fromBytes('image', imagePath)]
    // } else {

    // }

    // }

    try {
      await pb.collection('recipes').create(body: recipe.toJson(), files: [
        http.MultipartFile.fromBytes('image', imageBytes, filename: 'as.jpg')
      ]);

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteRecipe(Recipe recipe) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb.collection('recipes').delete(recipe.id);

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }
}
