import 'package:home_cooked/main.dart';
import 'package:home_cooked/features/recipe/model/recipe.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipes.g.dart';

@riverpod
class RecipeList extends _$RecipeList {
  Future<List<Recipe>> _getRecipes() async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      final res = await pb.collection('recipes').getList();

      final recipes =
          res.items.map((e) => Recipe.fromJson(e.toJson())).toList();

      return recipes;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Recipe>> build() async {
    return await _getRecipes();
  }
}
