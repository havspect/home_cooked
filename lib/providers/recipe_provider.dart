import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/recipe.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_provider.g.dart';

@riverpod
class RecipeEntry extends _$RecipeEntry {
  Future<Recipe> _getRecipe(String id) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      final res = await pb.collection('recipes').getOne(id);

      final recipe = Recipe.fromJson(res.toJson());

      return recipe;
    } catch (e) {
      // ignore: avoid_print
      rethrow;
    }
  }

  @override
  Future<Recipe> build(String id) async {
    return await _getRecipe(id);
  }

  Future<void> updateRecipe(Recipe recipe) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb.collection('recipes').update(recipe.id, body: recipe.toJson());

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }
}
