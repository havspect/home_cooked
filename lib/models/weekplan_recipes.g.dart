// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekplan_recipes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekplanRecipesImpl _$$WeekplanRecipesImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekplanRecipesImpl(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      expand: WeekplanRecipesExpanded.fromJson(
          json['expand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeekplanRecipesImplToJson(
        _$WeekplanRecipesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'expand': instance.expand.toJson(),
    };

_$WeekplanRecipesExpandedImpl _$$WeekplanRecipesExpandedImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekplanRecipesExpandedImpl(
      weekplan: Weekplan.fromJson(json['weekplan'] as Map<String, dynamic>),
      recipe: Recipe.fromJson(json['recipe'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeekplanRecipesExpandedImplToJson(
        _$WeekplanRecipesExpandedImpl instance) =>
    <String, dynamic>{
      'weekplan': instance.weekplan.toJson(),
      'recipe': instance.recipe.toJson(),
    };

_$NewWeekplanRecipesImpl _$$NewWeekplanRecipesImplFromJson(
        Map<String, dynamic> json) =>
    _$NewWeekplanRecipesImpl(
      date: json['date'] as String,
      weekplan: json['weekplan'] as String,
      recipe: json['recipe'] as String,
    );

Map<String, dynamic> _$$NewWeekplanRecipesImplToJson(
        _$NewWeekplanRecipesImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'weekplan': instance.weekplan,
      'recipe': instance.recipe,
    };
