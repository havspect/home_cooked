import 'package:home_cooked/main.dart';
import 'package:home_cooked/features/recipe/model/recipe.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe.g.dart';

@riverpod
class RecipeEntry extends _$RecipeEntry {
  Future<Recipe> _getRecipe(String id) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      final res = await pb.collection('recipes').getOne(id);

      final recipe = Recipe.fromJson(res.toJson());

      return recipe;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Recipe> build(String id) async {
    return await _getRecipe(id);
  }

  Future<void> put(Recipe recipe) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb.collection('recipes').update(recipe.id, body: recipe.toJson());

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> delete(id) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb.collection('recipes').delete(id);

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }
}

FutureOr<Recipe> createRecipe(NewRecipe recipe) async {
  final PocketBase pb = getIt<PocketBase>();

  try {
    final res = await pb.collection('recipes').create(body: recipe.toJson());

    return Recipe.fromJson(res.data);
  } catch (e) {
    rethrow;
  }
}
