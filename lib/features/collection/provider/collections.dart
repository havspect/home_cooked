// Necessary for code-generation to work
import 'package:home_cooked/main.dart';
import 'package:home_cooked/features/collection/model/collection.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'collections.g.dart';

@riverpod
class CollectionList extends _$CollectionList {
  // TODO: @request.auth.id ?= users.id

  Future<List<Collection>> _getAllCollectionsForUser() async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      final res = await pb
          .collection('collections')
          .getList(expand: 'owner,recipes,shared_users');

      final collections =
          res.items.map((e) => Collection.fromJson(e.toJson())).toList();

      return collections;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      rethrow;
    }
  }

  @override
  Future<List<Collection>> build() async {
    return await _getAllCollectionsForUser();
  }

  // Future<void> addCollection(NewCollection collection) async {
  //   final PocketBase pb = getIt<PocketBase>();

  //   try {
  //     await pb.collection('collections').create(body: collection.toJson());

  //     ref.invalidateSelf();
  //     await future;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<void> deleteCollection(Collection collection) async {
  //   final PocketBase pb = getIt<PocketBase>();

  //   try {
  //     await pb.collection('collections').delete(collection.id);

  //     ref.invalidateSelf();
  //     await future;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
