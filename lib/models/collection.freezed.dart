// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$Collection {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  CollectionExpanded? get expand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      CollectionExpanded? expand});

  $CollectionExpandedCopyWith<$Res>? get expand;
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as CollectionExpanded?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionExpandedCopyWith<$Res>? get expand {
    if (_value.expand == null) {
      return null;
    }

    return $CollectionExpandedCopyWith<$Res>(_value.expand!, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectionImplCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$$CollectionImplCopyWith(
          _$CollectionImpl value, $Res Function(_$CollectionImpl) then) =
      __$$CollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      CollectionExpanded? expand});

  @override
  $CollectionExpandedCopyWith<$Res>? get expand;
}

/// @nodoc
class __$$CollectionImplCopyWithImpl<$Res>
    extends _$CollectionCopyWithImpl<$Res, _$CollectionImpl>
    implements _$$CollectionImplCopyWith<$Res> {
  __$$CollectionImplCopyWithImpl(
      _$CollectionImpl _value, $Res Function(_$CollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? expand = freezed,
  }) {
    return _then(_$CollectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as CollectionExpanded?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CollectionImpl implements _Collection {
  _$CollectionImpl(
      {required this.id, required this.title, this.description, this.expand});

  factory _$CollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final CollectionExpanded? expand;

  @override
  String toString() {
    return 'Collection(id: $id, title: $title, description: $description, expand: $expand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.expand, expand) || other.expand == expand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, expand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      __$$CollectionImplCopyWithImpl<_$CollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionImplToJson(
      this,
    );
  }
}

abstract class _Collection implements Collection {
  factory _Collection(
      {required final String id,
      required final String title,
      final String? description,
      final CollectionExpanded? expand}) = _$CollectionImpl;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$CollectionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  CollectionExpanded? get expand;
  @override
  @JsonKey(ignore: true)
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectionExpanded _$CollectionExpandedFromJson(Map<String, dynamic> json) {
  return _CollectionExpanded.fromJson(json);
}

/// @nodoc
mixin _$CollectionExpanded {
  User get owner => throw _privateConstructorUsedError;
  List<User>? get users => throw _privateConstructorUsedError;
  List<Recipe>? get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionExpandedCopyWith<CollectionExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionExpandedCopyWith<$Res> {
  factory $CollectionExpandedCopyWith(
          CollectionExpanded value, $Res Function(CollectionExpanded) then) =
      _$CollectionExpandedCopyWithImpl<$Res, CollectionExpanded>;
  @useResult
  $Res call({User owner, List<User>? users, List<Recipe>? recipes});

  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class _$CollectionExpandedCopyWithImpl<$Res, $Val extends CollectionExpanded>
    implements $CollectionExpandedCopyWith<$Res> {
  _$CollectionExpandedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? users = freezed,
    Object? recipes = freezed,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      recipes: freezed == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get owner {
    return $UserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectionExpandedImplCopyWith<$Res>
    implements $CollectionExpandedCopyWith<$Res> {
  factory _$$CollectionExpandedImplCopyWith(_$CollectionExpandedImpl value,
          $Res Function(_$CollectionExpandedImpl) then) =
      __$$CollectionExpandedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User owner, List<User>? users, List<Recipe>? recipes});

  @override
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class __$$CollectionExpandedImplCopyWithImpl<$Res>
    extends _$CollectionExpandedCopyWithImpl<$Res, _$CollectionExpandedImpl>
    implements _$$CollectionExpandedImplCopyWith<$Res> {
  __$$CollectionExpandedImplCopyWithImpl(_$CollectionExpandedImpl _value,
      $Res Function(_$CollectionExpandedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? users = freezed,
    Object? recipes = freezed,
  }) {
    return _then(_$CollectionExpandedImpl(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      recipes: freezed == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CollectionExpandedImpl implements _CollectionExpanded {
  _$CollectionExpandedImpl(
      {required this.owner,
      final List<User>? users,
      final List<Recipe>? recipes})
      : _users = users,
        _recipes = recipes;

  factory _$CollectionExpandedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionExpandedImplFromJson(json);

  @override
  final User owner;
  final List<User>? _users;
  @override
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Recipe>? _recipes;
  @override
  List<Recipe>? get recipes {
    final value = _recipes;
    if (value == null) return null;
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CollectionExpanded(owner: $owner, users: $users, recipes: $recipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionExpandedImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      owner,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionExpandedImplCopyWith<_$CollectionExpandedImpl> get copyWith =>
      __$$CollectionExpandedImplCopyWithImpl<_$CollectionExpandedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionExpandedImplToJson(
      this,
    );
  }
}

abstract class _CollectionExpanded implements CollectionExpanded {
  factory _CollectionExpanded(
      {required final User owner,
      final List<User>? users,
      final List<Recipe>? recipes}) = _$CollectionExpandedImpl;

  factory _CollectionExpanded.fromJson(Map<String, dynamic> json) =
      _$CollectionExpandedImpl.fromJson;

  @override
  User get owner;
  @override
  List<User>? get users;
  @override
  List<Recipe>? get recipes;
  @override
  @JsonKey(ignore: true)
  _$$CollectionExpandedImplCopyWith<_$CollectionExpandedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewCollection _$NewCollectionFromJson(Map<String, dynamic> json) {
  return _NewCollection.fromJson(json);
}

/// @nodoc
mixin _$NewCollection {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewCollectionCopyWith<NewCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCollectionCopyWith<$Res> {
  factory $NewCollectionCopyWith(
          NewCollection value, $Res Function(NewCollection) then) =
      _$NewCollectionCopyWithImpl<$Res, NewCollection>;
  @useResult
  $Res call({String title, String? description, String owner});
}

/// @nodoc
class _$NewCollectionCopyWithImpl<$Res, $Val extends NewCollection>
    implements $NewCollectionCopyWith<$Res> {
  _$NewCollectionCopyWithImpl(this._value, this._then);

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
abstract class _$$NewCollectionImplCopyWith<$Res>
    implements $NewCollectionCopyWith<$Res> {
  factory _$$NewCollectionImplCopyWith(
          _$NewCollectionImpl value, $Res Function(_$NewCollectionImpl) then) =
      __$$NewCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description, String owner});
}

/// @nodoc
class __$$NewCollectionImplCopyWithImpl<$Res>
    extends _$NewCollectionCopyWithImpl<$Res, _$NewCollectionImpl>
    implements _$$NewCollectionImplCopyWith<$Res> {
  __$$NewCollectionImplCopyWithImpl(
      _$NewCollectionImpl _value, $Res Function(_$NewCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? owner = null,
  }) {
    return _then(_$NewCollectionImpl(
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
class _$NewCollectionImpl implements _NewCollection {
  _$NewCollectionImpl(
      {required this.title, this.description, required this.owner});

  factory _$NewCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewCollectionImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final String owner;

  @override
  String toString() {
    return 'NewCollection(title: $title, description: $description, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewCollectionImpl &&
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
  _$$NewCollectionImplCopyWith<_$NewCollectionImpl> get copyWith =>
      __$$NewCollectionImplCopyWithImpl<_$NewCollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewCollectionImplToJson(
      this,
    );
  }
}

abstract class _NewCollection implements NewCollection {
  factory _NewCollection(
      {required final String title,
      final String? description,
      required final String owner}) = _$NewCollectionImpl;

  factory _NewCollection.fromJson(Map<String, dynamic> json) =
      _$NewCollectionImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  String get owner;
  @override
  @JsonKey(ignore: true)
  _$$NewCollectionImplCopyWith<_$NewCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
