import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  factory Recipe({required String id, required String title, String? link}) =
      _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}

@freezed
class NewRecipe with _$NewRecipe {
  factory NewRecipe({required String title, String? link}) = _NewRecipe;

  factory NewRecipe.fromJson(Map<String, dynamic> json) =>
      _$NewRecipeFromJson(json);
}
