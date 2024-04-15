// Necessary for code-generation to work
import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/weekplan.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weekplan_list_provider.g.dart';

@riverpod
class WeekplanList extends _$WeekplanList {
  Future<List<Weekplan>> _getAll() async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      final res = await pb.collection('weekplan').getList();

      final recipes =
          res.items.map((e) => Weekplan.fromJson(e.toJson())).toList();

      return recipes;
    } catch (e) {
      // ignore: avoid_print
      rethrow;
    }
  }

  @override
  Future<List<Weekplan>> build() async {
    return await _getAll();
  }

  // Future<void> addRecipe(NewRecipe recipe, Uint8List imageBytes) async {
  //   final PocketBase pb = getIt<PocketBase>();

  //   List<http.MultipartFile> image;
  //   try {
  //     await pb.collection('recipes').create(body: recipe.toJson(), files: [
  //       http.MultipartFile.fromBytes('image', imageBytes, filename: 'as.jpg')
  //     ]);

  //     ref.invalidateSelf();
  //     await future;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<void> add(NewWeekplan item) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb.collection('weekplan').create(body: item.toJson());

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> delete(Weekplan item) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb.collection('weekplan').delete(item.id);

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }
}
