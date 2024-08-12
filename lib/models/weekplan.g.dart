// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekplan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekplanImpl _$$WeekplanImplFromJson(Map<String, dynamic> json) =>
    _$WeekplanImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      owner: json['owner'] as String,
      expand: json['expand'] == null
          ? null
          : WeekplanExpanded.fromJson(json['expand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeekplanImplToJson(_$WeekplanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'owner': instance.owner,
      'expand': instance.expand?.toJson(),
    };

_$WeekplanExpandedImpl _$$WeekplanExpandedImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekplanExpandedImpl(
      owner: User.fromJson(json['owner'] as Map<String, dynamic>),
      weekplanRecipes: (json['weekplan_recipes'] as List<dynamic>?)
          ?.map((e) => WeekplanRecipes.fromJson(e as Map<String, dynamic>))
          .toList(),
      sharedUsers: (json['shared_users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeekplanExpandedImplToJson(
        _$WeekplanExpandedImpl instance) =>
    <String, dynamic>{
      'owner': instance.owner.toJson(),
      'weekplan_recipes':
          instance.weekplanRecipes?.map((e) => e.toJson()).toList(),
      'shared_users': instance.sharedUsers?.map((e) => e.toJson()).toList(),
    };

_$NewWeekplanImpl _$$NewWeekplanImplFromJson(Map<String, dynamic> json) =>
    _$NewWeekplanImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      owner: json['owner'] as String,
    );

Map<String, dynamic> _$$NewWeekplanImplToJson(_$NewWeekplanImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'owner': instance.owner,
    };
