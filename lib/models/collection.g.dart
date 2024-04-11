// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      expand: json['expand'] == null
          ? null
          : CollectionExpanded.fromJson(json['expand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'expand': instance.expand?.toJson(),
    };

_$CollectionExpandedImpl _$$CollectionExpandedImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionExpandedImpl(
      owner: User.fromJson(json['owner'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipes: (json['recipes'] as List<dynamic>?)
          ?.map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollectionExpandedImplToJson(
        _$CollectionExpandedImpl instance) =>
    <String, dynamic>{
      'owner': instance.owner.toJson(),
      'users': instance.users?.map((e) => e.toJson()).toList(),
      'recipes': instance.recipes?.map((e) => e.toJson()).toList(),
    };
