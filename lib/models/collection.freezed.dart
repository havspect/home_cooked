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
  String get name => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'shared_users')
  List<String> get sharedUsers => throw _privateConstructorUsedError;
  CollectionExpanded? get expand => throw _privateConstructorUsedError;

  /// Serializes this Collection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      String name,
      String owner,
      @JsonKey(name: 'shared_users') List<String> sharedUsers,
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

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? owner = null,
    Object? sharedUsers = null,
    Object? expand = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      sharedUsers: null == sharedUsers
          ? _value.sharedUsers
          : sharedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as CollectionExpanded?,
    ) as $Val);
  }

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
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
      String name,
      String owner,
      @JsonKey(name: 'shared_users') List<String> sharedUsers,
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

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? owner = null,
    Object? sharedUsers = null,
    Object? expand = freezed,
  }) {
    return _then(_$CollectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      sharedUsers: null == sharedUsers
          ? _value._sharedUsers
          : sharedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {required this.id,
      required this.name,
      required this.owner,
      @JsonKey(name: 'shared_users') required final List<String> sharedUsers,
      this.expand})
      : _sharedUsers = sharedUsers;

  factory _$CollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String owner;
  final List<String> _sharedUsers;
  @override
  @JsonKey(name: 'shared_users')
  List<String> get sharedUsers {
    if (_sharedUsers is EqualUnmodifiableListView) return _sharedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedUsers);
  }

  @override
  final CollectionExpanded? expand;

  @override
  String toString() {
    return 'Collection(id: $id, name: $name, owner: $owner, sharedUsers: $sharedUsers, expand: $expand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality()
                .equals(other._sharedUsers, _sharedUsers) &&
            (identical(other.expand, expand) || other.expand == expand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, owner,
      const DeepCollectionEquality().hash(_sharedUsers), expand);

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      required final String name,
      required final String owner,
      @JsonKey(name: 'shared_users') required final List<String> sharedUsers,
      final CollectionExpanded? expand}) = _$CollectionImpl;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$CollectionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get owner;
  @override
  @JsonKey(name: 'shared_users')
  List<String> get sharedUsers;
  @override
  CollectionExpanded? get expand;

  /// Create a copy of Collection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectionExpanded _$CollectionExpandedFromJson(Map<String, dynamic> json) {
  return _CollectionExpanded.fromJson(json);
}

/// @nodoc
mixin _$CollectionExpanded {
  User get owner => throw _privateConstructorUsedError;
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  @JsonKey(name: 'shared_users')
  List<User> get sharedUsers => throw _privateConstructorUsedError;

  /// Serializes this CollectionExpanded to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionExpanded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionExpandedCopyWith<CollectionExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionExpandedCopyWith<$Res> {
  factory $CollectionExpandedCopyWith(
          CollectionExpanded value, $Res Function(CollectionExpanded) then) =
      _$CollectionExpandedCopyWithImpl<$Res, CollectionExpanded>;
  @useResult
  $Res call(
      {User owner,
      List<Recipe> recipes,
      @JsonKey(name: 'shared_users') List<User> sharedUsers});

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

  /// Create a copy of CollectionExpanded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? recipes = null,
    Object? sharedUsers = null,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      sharedUsers: null == sharedUsers
          ? _value.sharedUsers
          : sharedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }

  /// Create a copy of CollectionExpanded
  /// with the given fields replaced by the non-null parameter values.
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
  $Res call(
      {User owner,
      List<Recipe> recipes,
      @JsonKey(name: 'shared_users') List<User> sharedUsers});

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

  /// Create a copy of CollectionExpanded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? recipes = null,
    Object? sharedUsers = null,
  }) {
    return _then(_$CollectionExpandedImpl(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      sharedUsers: null == sharedUsers
          ? _value._sharedUsers
          : sharedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CollectionExpandedImpl implements _CollectionExpanded {
  _$CollectionExpandedImpl(
      {required this.owner,
      required final List<Recipe> recipes,
      @JsonKey(name: 'shared_users') required final List<User> sharedUsers})
      : _recipes = recipes,
        _sharedUsers = sharedUsers;

  factory _$CollectionExpandedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionExpandedImplFromJson(json);

  @override
  final User owner;
  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  final List<User> _sharedUsers;
  @override
  @JsonKey(name: 'shared_users')
  List<User> get sharedUsers {
    if (_sharedUsers is EqualUnmodifiableListView) return _sharedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedUsers);
  }

  @override
  String toString() {
    return 'CollectionExpanded(owner: $owner, recipes: $recipes, sharedUsers: $sharedUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionExpandedImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality()
                .equals(other._sharedUsers, _sharedUsers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      owner,
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(_sharedUsers));

  /// Create a copy of CollectionExpanded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      required final List<Recipe> recipes,
      @JsonKey(name: 'shared_users')
      required final List<User> sharedUsers}) = _$CollectionExpandedImpl;

  factory _CollectionExpanded.fromJson(Map<String, dynamic> json) =
      _$CollectionExpandedImpl.fromJson;

  @override
  User get owner;
  @override
  List<Recipe> get recipes;
  @override
  @JsonKey(name: 'shared_users')
  List<User> get sharedUsers;

  /// Create a copy of CollectionExpanded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this NewCollection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of NewCollection
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of NewCollection
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, owner);

  /// Create a copy of NewCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of NewCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewCollectionImplCopyWith<_$NewCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
