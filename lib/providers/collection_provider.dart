import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/collection.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'collection_provider.g.dart';

@riverpod
class CollectionEntry extends _$CollectionEntry {
  Future<Collection> _getCollection(String id) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      final res = await pb
          .collection('collections')
          .getOne(id, expand: 'owner,recipes,shared_users');

      final collection = Collection.fromJson(res.toJson());

      return collection;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Collection> build(String id) async {
    return await _getCollection(id);
  }

  Future<void> updateCollection(Collection collection) async {
    final PocketBase pb = getIt<PocketBase>();

    try {
      await pb
          .collection('collections')
          .update(collection.id, body: collection.toJson());

      ref.invalidateSelf();
      await future;
    } catch (e) {
      rethrow;
    }
  }
}
