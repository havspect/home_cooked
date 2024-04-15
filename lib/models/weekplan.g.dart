// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekplan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekplanImpl _$$WeekplanImplFromJson(Map<String, dynamic> json) =>
    _$WeekplanImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      expand: json['expand'] == null
          ? null
          : WeekplanExpanded.fromJson(json['expand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeekplanImplToJson(_$WeekplanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'expand': instance.expand?.toJson(),
    };

_$WeekplanExpandedImpl _$$WeekplanExpandedImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekplanExpandedImpl(
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeekplanExpandedImplToJson(
        _$WeekplanExpandedImpl instance) =>
    <String, dynamic>{
      'owner': instance.owner?.toJson(),
      'users': instance.users?.map((e) => e.toJson()).toList(),
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
