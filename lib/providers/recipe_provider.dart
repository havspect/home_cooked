// Necessary for code-generation to work
import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/recipe.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_provider.g.dart';

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

  Future<void> addRecipe(NewRecipe recipe) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb.collection('recipes').create(body: recipe.toJson());

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }
}
