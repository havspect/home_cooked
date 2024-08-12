import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/weekplan_recipes.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weekplan_recipes_provider.g.dart';

@riverpod
class WeekplanRecipesList extends _$WeekplanRecipesList {
  Future<List<WeekplanRecipes>> _getWeekplan(String id) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      final res = await pb.collection('weekplan_recipes').getList(
          filter: pb.filter("weekplan ~ {:id}", {"id": id}),
          fields: "*,expand.recipe.*,expand.weekplan.*",
          expand: "weekplan,recipe");

      final wpList =
          res.items.map((e) => WeekplanRecipes.fromJson(e.toJson())).toList();

      return wpList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<WeekplanRecipes>> build(String id) async {
    return await _getWeekplan(id);
  }

  Future<void> updateWeekplanRecipes(WeekplanRecipes weekplanRecipes) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb
          .collection('weekplan_recipes')
          .update(weekplanRecipes.id, body: weekplanRecipes.toJson());

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }
}
