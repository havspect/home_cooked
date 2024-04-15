// Necessary for code-generation to work
import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/collection.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'collection_list_provider.g.dart';

@riverpod
class CollectionList extends _$CollectionList {
  // TODO: @request.auth.id ?= users.id

  Future<List<Collection>> _getAllCollections() async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      final res = await pb
          .collection('collections')
          .getList(expand: 'recipes,owner,users');

      final collections =
          res.items.map((e) => Collection.fromJson(e.toJson())).toList();

      return collections;
    } catch (e) {
      // ignore: avoid_print
      rethrow;
    }
  }

  @override
  Future<List<Collection>> build() async {
    return await _getAllCollections();
  }

  Future<void> addCollection(NewCollection collection) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb.collection('collections').create(body: collection.toJson());

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteCollection(Collection collection) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb.collection('collections').delete(collection.id);

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }
}
