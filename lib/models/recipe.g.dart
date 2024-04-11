// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
    };

_$NewRecipeImpl _$$NewRecipeImplFromJson(Map<String, dynamic> json) =>
    _$NewRecipeImpl(
      title: json['title'] as String,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$NewRecipeImplToJson(_$NewRecipeImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
    };
