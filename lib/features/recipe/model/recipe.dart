import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  factory Recipe(
      {required String id,
      required String title,
      String? note,
      String? source,
      String? link,
      @JsonKey(name: 'image_url') String? imageUrl}) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}

@freezed
class NewRecipe with _$NewRecipe {
  factory NewRecipe(
      {required String title,
      String? link,
      String? note,
      String? source}) = _NewRecipe;

  factory NewRecipe.fromJson(Map<String, dynamic> json) =>
      _$NewRecipeFromJson(json);
}
