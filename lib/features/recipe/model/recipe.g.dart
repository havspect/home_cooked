// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      note: json['note'] as String?,
      source: json['source'] as String?,
      link: json['link'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'source': instance.source,
      'link': instance.link,
      'image_url': instance.imageUrl,
    };

_$NewRecipeImpl _$$NewRecipeImplFromJson(Map<String, dynamic> json) =>
    _$NewRecipeImpl(
      title: json['title'] as String,
      link: json['link'] as String?,
      note: json['note'] as String?,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$NewRecipeImplToJson(_$NewRecipeImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'note': instance.note,
      'source': instance.source,
    };
