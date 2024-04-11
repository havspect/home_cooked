import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_cooked/models/recipe.dart';
import 'package:home_cooked/models/user.dart';
import 'package:pocketbase/pocketbase.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  @JsonSerializable(explicitToJson: true)
  factory Collection({
    required String title,
    String? description,
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
    List<User>? users,
    List<Recipe>? recipes,
  }) = _CollectionExpanded;

  factory CollectionExpanded.fromJson(Map<String, dynamic> json) =>
      _$CollectionExpandedFromJson(json);
}
