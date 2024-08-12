import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_cooked/models/recipe.dart';
import 'package:home_cooked/models/user.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  @JsonSerializable(explicitToJson: true)
  factory Collection({
    required String id,
    required String name,
    required String owner,
    @JsonKey(name: 'shared_users') required List<String> sharedUsers,
    CollectionExpanded? expand,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}

@freezed
class CollectionExpanded with _$CollectionExpanded {
  @JsonSerializable(explicitToJson: true)
  factory CollectionExpanded({
    required User owner,
    required List<Recipe> recipes,
    @JsonKey(name: 'shared_users') required List<User> sharedUsers,
  }) = _CollectionExpanded;

  factory CollectionExpanded.fromJson(Map<String, dynamic> json) =>
      _$CollectionExpandedFromJson(json);
}

@freezed
class NewCollection with _$NewCollection {
  factory NewCollection(
      {required String title,
      String? description,
      required String owner}) = _NewCollection;

  factory NewCollection.fromJson(Map<String, dynamic> json) =>
      _$NewCollectionFromJson(json);
}
