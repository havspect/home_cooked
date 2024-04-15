// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekplan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Weekplan _$WeekplanFromJson(Map<String, dynamic> json) {
  return _Weekplan.fromJson(json);
}

/// @nodoc
mixin _$Weekplan {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  WeekplanExpanded? get expand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekplanCopyWith<Weekplan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekplanCopyWith<$Res> {
  factory $WeekplanCopyWith(Weekplan value, $Res Function(Weekplan) then) =
      _$WeekplanCopyWithImpl<$Res, Weekplan>;
  @useResult
  $Res call({String id, String title, WeekplanExpanded? expand});

  $WeekplanExpandedCopyWith<$Res>? get expand;
}

/// @nodoc
class _$WeekplanCopyWithImpl<$Res, $Val extends Weekplan>
    implements $WeekplanCopyWith<$Res> {
  _$WeekplanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? expand = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as WeekplanExpanded?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekplanExpandedCopyWith<$Res>? get expand {
    if (_value.expand == null) {
      return null;
    }

    return $WeekplanExpandedCopyWith<$Res>(_value.expand!, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeekplanImplCopyWith<$Res>
    implements $WeekplanCopyWith<$Res> {
  factory _$$WeekplanImplCopyWith(
          _$WeekplanImpl value, $Res Function(_$WeekplanImpl) then) =
      __$$WeekplanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, WeekplanExpanded? expand});

  @override
  $WeekplanExpandedCopyWith<$Res>? get expand;
}

/// @nodoc
class __$$WeekplanImplCopyWithImpl<$Res>
    extends _$WeekplanCopyWithImpl<$Res, _$WeekplanImpl>
    implements _$$WeekplanImplCopyWith<$Res> {
  __$$WeekplanImplCopyWithImpl(
      _$WeekplanImpl _value, $Res Function(_$WeekplanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? expand = freezed,
  }) {
    return _then(_$WeekplanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as WeekplanExpanded?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeekplanImpl implements _Weekplan {
  _$WeekplanImpl({required this.id, required this.title, this.expand});

  factory _$WeekplanImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekplanImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final WeekplanExpanded? expand;

  @override
  String toString() {
    return 'Weekplan(id: $id, title: $title, expand: $expand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekplanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.expand, expand) || other.expand == expand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, expand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekplanImplCopyWith<_$WeekplanImpl> get copyWith =>
      __$$WeekplanImplCopyWithImpl<_$WeekplanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekplanImplToJson(
      this,
    );
  }
}

abstract class _Weekplan implements Weekplan {
  factory _Weekplan(
      {required final String id,
      required final String title,
      final WeekplanExpanded? expand}) = _$WeekplanImpl;

  factory _Weekplan.fromJson(Map<String, dynamic> json) =
      _$WeekplanImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  WeekplanExpanded? get expand;
  @override
  @JsonKey(ignore: true)
  _$$WeekplanImplCopyWith<_$WeekplanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekplanExpanded _$WeekplanExpandedFromJson(Map<String, dynamic> json) {
  return _WeekplanExpanded.fromJson(json);
}

/// @nodoc
mixin _$WeekplanExpanded {
  User? get owner => throw _privateConstructorUsedError;
  List<User>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekplanExpandedCopyWith<WeekplanExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekplanExpandedCopyWith<$Res> {
  factory $WeekplanExpandedCopyWith(
          WeekplanExpanded value, $Res Function(WeekplanExpanded) then) =
      _$WeekplanExpandedCopyWithImpl<$Res, WeekplanExpanded>;
  @useResult
  $Res call({User? owner, List<User>? users});

  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class _$WeekplanExpandedCopyWithImpl<$Res, $Val extends WeekplanExpanded>
    implements $WeekplanExpandedCopyWith<$Res> {
  _$WeekplanExpandedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeekplanExpandedImplCopyWith<$Res>
    implements $WeekplanExpandedCopyWith<$Res> {
  factory _$$WeekplanExpandedImplCopyWith(_$WeekplanExpandedImpl value,
          $Res Function(_$WeekplanExpandedImpl) then) =
      __$$WeekplanExpandedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? owner, List<User>? users});

  @override
  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$WeekplanExpandedImplCopyWithImpl<$Res>
    extends _$WeekplanExpandedCopyWithImpl<$Res, _$WeekplanExpandedImpl>
    implements _$$WeekplanExpandedImplCopyWith<$Res> {
  __$$WeekplanExpandedImplCopyWithImpl(_$WeekplanExpandedImpl _value,
      $Res Function(_$WeekplanExpandedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? users = freezed,
  }) {
    return _then(_$WeekplanExpandedImpl(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeekplanExpandedImpl implements _WeekplanExpanded {
  _$WeekplanExpandedImpl({this.owner, final List<User>? users})
      : _users = users;

  factory _$WeekplanExpandedImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekplanExpandedImplFromJson(json);

  @override
  final User? owner;
  final List<User>? _users;
  @override
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeekplanExpanded(owner: $owner, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekplanExpandedImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, owner, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekplanExpandedImplCopyWith<_$WeekplanExpandedImpl> get copyWith =>
      __$$WeekplanExpandedImplCopyWithImpl<_$WeekplanExpandedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekplanExpandedImplToJson(
      this,
    );
  }
}

abstract class _WeekplanExpanded implements WeekplanExpanded {
  factory _WeekplanExpanded({final User? owner, final List<User>? users}) =
      _$WeekplanExpandedImpl;

  factory _WeekplanExpanded.fromJson(Map<String, dynamic> json) =
      _$WeekplanExpandedImpl.fromJson;

  @override
  User? get owner;
  @override
  List<User>? get users;
  @override
  @JsonKey(ignore: true)
  _$$WeekplanExpandedImplCopyWith<_$WeekplanExpandedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewWeekplan _$NewWeekplanFromJson(Map<String, dynamic> json) {
  return _NewWeekplan.fromJson(json);
}

/// @nodoc
mixin _$NewWeekplan {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewWeekplanCopyWith<NewWeekplan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewWeekplanCopyWith<$Res> {
  factory $NewWeekplanCopyWith(
          NewWeekplan value, $Res Function(NewWeekplan) then) =
      _$NewWeekplanCopyWithImpl<$Res, NewWeekplan>;
  @useResult
  $Res call({String title, String? description, String owner});
}

/// @nodoc
class _$NewWeekplanCopyWithImpl<$Res, $Val extends NewWeekplan>
    implements $NewWeekplanCopyWith<$Res> {
  _$NewWeekplanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewWeekplanImplCopyWith<$Res>
    implements $NewWeekplanCopyWith<$Res> {
  factory _$$NewWeekplanImplCopyWith(
          _$NewWeekplanImpl value, $Res Function(_$NewWeekplanImpl) then) =
      __$$NewWeekplanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description, String owner});
}

/// @nodoc
class __$$NewWeekplanImplCopyWithImpl<$Res>
    extends _$NewWeekplanCopyWithImpl<$Res, _$NewWeekplanImpl>
    implements _$$NewWeekplanImplCopyWith<$Res> {
  __$$NewWeekplanImplCopyWithImpl(
      _$NewWeekplanImpl _value, $Res Function(_$NewWeekplanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? owner = null,
  }) {
    return _then(_$NewWeekplanImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewWeekplanImpl implements _NewWeekplan {
  _$NewWeekplanImpl(
      {required this.title, this.description, required this.owner});

  factory _$NewWeekplanImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewWeekplanImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final String owner;

  @override
  String toString() {
    return 'NewWeekplan(title: $title, description: $description, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewWeekplanImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewWeekplanImplCopyWith<_$NewWeekplanImpl> get copyWith =>
      __$$NewWeekplanImplCopyWithImpl<_$NewWeekplanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewWeekplanImplToJson(
      this,
    );
  }
}

abstract class _NewWeekplan implements NewWeekplan {
  factory _NewWeekplan(
      {required final String title,
      final String? description,
      required final String owner}) = _$NewWeekplanImpl;

  factory _NewWeekplan.fromJson(Map<String, dynamic> json) =
      _$NewWeekplanImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  String get owner;
  @override
  @JsonKey(ignore: true)
  _$$NewWeekplanImplCopyWith<_$NewWeekplanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
