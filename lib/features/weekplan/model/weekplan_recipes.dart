import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_cooked/features/recipe/model/recipe.dart';
import 'package:home_cooked/features/weekplan/model/weekplan.dart';

part 'weekplan_recipes.freezed.dart';
part 'weekplan_recipes.g.dart';

@freezed
class WeekplanRecipes with _$WeekplanRecipes {
  @JsonSerializable(explicitToJson: true)
  factory WeekplanRecipes({
    required String id,
    @JsonKey(name: 'weekplan_id') required String weekplanId,
    @JsonKey(name: 'recipe_id') required String recipeId,
    required DateTime date,
    required WeekplanRecipesExpanded expand,
  }) = _WeekplanRecipes;

  factory WeekplanRecipes.fromJson(Map<String, dynamic> json) =>
      _$WeekplanRecipesFromJson(json);
}

@freezed
class WeekplanRecipesExpanded with _$WeekplanRecipesExpanded {
  @JsonSerializable(explicitToJson: true)
  factory WeekplanRecipesExpanded({
    required Weekplan weekplan,
    required Recipe recipe,
  }) = _WeekplanRecipesExpanded;

  factory WeekplanRecipesExpanded.fromJson(Map<String, dynamic> json) =>
      _$WeekplanRecipesExpandedFromJson(json);
}

@freezed
class NewWeekplanRecipes with _$NewWeekplanRecipes {
  factory NewWeekplanRecipes(
      {required String date,
      required String weekplan,
      required String recipe}) = _NewWeekplanRecipes;

  factory NewWeekplanRecipes.fromJson(Map<String, dynamic> json) =>
      _$NewWeekplanRecipesFromJson(json);
}
