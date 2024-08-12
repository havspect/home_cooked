// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekplan_recipes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeekplanRecipes _$WeekplanRecipesFromJson(Map<String, dynamic> json) {
  return _WeekplanRecipes.fromJson(json);
}

/// @nodoc
mixin _$WeekplanRecipes {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekplan_id')
  String get weekplanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_id')
  String get recipeId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  WeekplanRecipesExpanded get expand => throw _privateConstructorUsedError;

  /// Serializes this WeekplanRecipes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekplanRecipesCopyWith<WeekplanRecipes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekplanRecipesCopyWith<$Res> {
  factory $WeekplanRecipesCopyWith(
          WeekplanRecipes value, $Res Function(WeekplanRecipes) then) =
      _$WeekplanRecipesCopyWithImpl<$Res, WeekplanRecipes>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'weekplan_id') String weekplanId,
      @JsonKey(name: 'recipe_id') String recipeId,
      DateTime date,
      WeekplanRecipesExpanded expand});

  $WeekplanRecipesExpandedCopyWith<$Res> get expand;
}

/// @nodoc
class _$WeekplanRecipesCopyWithImpl<$Res, $Val extends WeekplanRecipes>
    implements $WeekplanRecipesCopyWith<$Res> {
  _$WeekplanRecipesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekplanId = null,
    Object? recipeId = null,
    Object? date = null,
    Object? expand = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekplanId: null == weekplanId
          ? _value.weekplanId
          : weekplanId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expand: null == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as WeekplanRecipesExpanded,
    ) as $Val);
  }

  /// Create a copy of WeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekplanRecipesExpandedCopyWith<$Res> get expand {
    return $WeekplanRecipesExpandedCopyWith<$Res>(_value.expand, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeekplanRecipesImplCopyWith<$Res>
    implements $WeekplanRecipesCopyWith<$Res> {
  factory _$$WeekplanRecipesImplCopyWith(_$WeekplanRecipesImpl value,
          $Res Function(_$WeekplanRecipesImpl) then) =
      __$$WeekplanRecipesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'weekplan_id') String weekplanId,
      @JsonKey(name: 'recipe_id') String recipeId,
      DateTime date,
      WeekplanRecipesExpanded expand});

  @override
  $WeekplanRecipesExpandedCopyWith<$Res> get expand;
}

/// @nodoc
class __$$WeekplanRecipesImplCopyWithImpl<$Res>
    extends _$WeekplanRecipesCopyWithImpl<$Res, _$WeekplanRecipesImpl>
    implements _$$WeekplanRecipesImplCopyWith<$Res> {
  __$$WeekplanRecipesImplCopyWithImpl(
      _$WeekplanRecipesImpl _value, $Res Function(_$WeekplanRecipesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekplanId = null,
    Object? recipeId = null,
    Object? date = null,
    Object? expand = null,
  }) {
    return _then(_$WeekplanRecipesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weekplanId: null == weekplanId
          ? _value.weekplanId
          : weekplanId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expand: null == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as WeekplanRecipesExpanded,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeekplanRecipesImpl implements _WeekplanRecipes {
  _$WeekplanRecipesImpl(
      {required this.id,
      @JsonKey(name: 'weekplan_id') required this.weekplanId,
      @JsonKey(name: 'recipe_id') required this.recipeId,
      required this.date,
      required this.expand});

  factory _$WeekplanRecipesImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekplanRecipesImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'weekplan_id')
  final String weekplanId;
  @override
  @JsonKey(name: 'recipe_id')
  final String recipeId;
  @override
  final DateTime date;
  @override
  final WeekplanRecipesExpanded expand;

  @override
  String toString() {
    return 'WeekplanRecipes(id: $id, weekplanId: $weekplanId, recipeId: $recipeId, date: $date, expand: $expand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekplanRecipesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weekplanId, weekplanId) ||
                other.weekplanId == weekplanId) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.expand, expand) || other.expand == expand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, weekplanId, recipeId, date, expand);

  /// Create a copy of WeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekplanRecipesImplCopyWith<_$WeekplanRecipesImpl> get copyWith =>
      __$$WeekplanRecipesImplCopyWithImpl<_$WeekplanRecipesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekplanRecipesImplToJson(
      this,
    );
  }
}

abstract class _WeekplanRecipes implements WeekplanRecipes {
  factory _WeekplanRecipes(
      {required final String id,
      @JsonKey(name: 'weekplan_id') required final String weekplanId,
      @JsonKey(name: 'recipe_id') required final String recipeId,
      required final DateTime date,
      required final WeekplanRecipesExpanded expand}) = _$WeekplanRecipesImpl;

  factory _WeekplanRecipes.fromJson(Map<String, dynamic> json) =
      _$WeekplanRecipesImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'weekplan_id')
  String get weekplanId;
  @override
  @JsonKey(name: 'recipe_id')
  String get recipeId;
  @override
  DateTime get date;
  @override
  WeekplanRecipesExpanded get expand;

  /// Create a copy of WeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekplanRecipesImplCopyWith<_$WeekplanRecipesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekplanRecipesExpanded _$WeekplanRecipesExpandedFromJson(
    Map<String, dynamic> json) {
  return _WeekplanRecipesExpanded.fromJson(json);
}

/// @nodoc
mixin _$WeekplanRecipesExpanded {
  Weekplan get weekplan => throw _privateConstructorUsedError;
  Recipe get recipe => throw _privateConstructorUsedError;

  /// Serializes this WeekplanRecipesExpanded to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekplanRecipesExpanded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekplanRecipesExpandedCopyWith<WeekplanRecipesExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekplanRecipesExpandedCopyWith<$Res> {
  factory $WeekplanRecipesExpandedCopyWith(WeekplanRecipesExpanded value,
          $Res Function(WeekplanRecipesExpanded) then) =
      _$WeekplanRecipesExpandedCopyWithImpl<$Res, WeekplanRecipesExpanded>;
  @useResult
  $Res call({Weekplan weekplan, Recipe recipe});

  $WeekplanCopyWith<$Res> get weekplan;
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class _$WeekplanRecipesExpandedCopyWithImpl<$Res,
        $Val extends WeekplanRecipesExpanded>
    implements $WeekplanRecipesExpandedCopyWith<$Res> {
  _$WeekplanRecipesExpandedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekplanRecipesExpanded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekplan = null,
    Object? recipe = null,
  }) {
    return _then(_value.copyWith(
      weekplan: null == weekplan
          ? _value.weekplan
          : weekplan // ignore: cast_nullable_to_non_nullable
              as Weekplan,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ) as $Val);
  }

  /// Create a copy of WeekplanRecipesExpanded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekplanCopyWith<$Res> get weekplan {
    return $WeekplanCopyWith<$Res>(_value.weekplan, (value) {
      return _then(_value.copyWith(weekplan: value) as $Val);
    });
  }

  /// Create a copy of WeekplanRecipesExpanded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeekplanRecipesExpandedImplCopyWith<$Res>
    implements $WeekplanRecipesExpandedCopyWith<$Res> {
  factory _$$WeekplanRecipesExpandedImplCopyWith(
          _$WeekplanRecipesExpandedImpl value,
          $Res Function(_$WeekplanRecipesExpandedImpl) then) =
      __$$WeekplanRecipesExpandedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Weekplan weekplan, Recipe recipe});

  @override
  $WeekplanCopyWith<$Res> get weekplan;
  @override
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$WeekplanRecipesExpandedImplCopyWithImpl<$Res>
    extends _$WeekplanRecipesExpandedCopyWithImpl<$Res,
        _$WeekplanRecipesExpandedImpl>
    implements _$$WeekplanRecipesExpandedImplCopyWith<$Res> {
  __$$WeekplanRecipesExpandedImplCopyWithImpl(
      _$WeekplanRecipesExpandedImpl _value,
      $Res Function(_$WeekplanRecipesExpandedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekplanRecipesExpanded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekplan = null,
    Object? recipe = null,
  }) {
    return _then(_$WeekplanRecipesExpandedImpl(
      weekplan: null == weekplan
          ? _value.weekplan
          : weekplan // ignore: cast_nullable_to_non_nullable
              as Weekplan,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeekplanRecipesExpandedImpl implements _WeekplanRecipesExpanded {
  _$WeekplanRecipesExpandedImpl({required this.weekplan, required this.recipe});

  factory _$WeekplanRecipesExpandedImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekplanRecipesExpandedImplFromJson(json);

  @override
  final Weekplan weekplan;
  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'WeekplanRecipesExpanded(weekplan: $weekplan, recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekplanRecipesExpandedImpl &&
            (identical(other.weekplan, weekplan) ||
                other.weekplan == weekplan) &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weekplan, recipe);

  /// Create a copy of WeekplanRecipesExpanded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekplanRecipesExpandedImplCopyWith<_$WeekplanRecipesExpandedImpl>
      get copyWith => __$$WeekplanRecipesExpandedImplCopyWithImpl<
          _$WeekplanRecipesExpandedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekplanRecipesExpandedImplToJson(
      this,
    );
  }
}

abstract class _WeekplanRecipesExpanded implements WeekplanRecipesExpanded {
  factory _WeekplanRecipesExpanded(
      {required final Weekplan weekplan,
      required final Recipe recipe}) = _$WeekplanRecipesExpandedImpl;

  factory _WeekplanRecipesExpanded.fromJson(Map<String, dynamic> json) =
      _$WeekplanRecipesExpandedImpl.fromJson;

  @override
  Weekplan get weekplan;
  @override
  Recipe get recipe;

  /// Create a copy of WeekplanRecipesExpanded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekplanRecipesExpandedImplCopyWith<_$WeekplanRecipesExpandedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewWeekplanRecipes _$NewWeekplanRecipesFromJson(Map<String, dynamic> json) {
  return _NewWeekplanRecipes.fromJson(json);
}

/// @nodoc
mixin _$NewWeekplanRecipes {
  String get date => throw _privateConstructorUsedError;
  String get weekplan => throw _privateConstructorUsedError;
  String get recipe => throw _privateConstructorUsedError;

  /// Serializes this NewWeekplanRecipes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewWeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewWeekplanRecipesCopyWith<NewWeekplanRecipes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewWeekplanRecipesCopyWith<$Res> {
  factory $NewWeekplanRecipesCopyWith(
          NewWeekplanRecipes value, $Res Function(NewWeekplanRecipes) then) =
      _$NewWeekplanRecipesCopyWithImpl<$Res, NewWeekplanRecipes>;
  @useResult
  $Res call({String date, String weekplan, String recipe});
}

/// @nodoc
class _$NewWeekplanRecipesCopyWithImpl<$Res, $Val extends NewWeekplanRecipes>
    implements $NewWeekplanRecipesCopyWith<$Res> {
  _$NewWeekplanRecipesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewWeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? weekplan = null,
    Object? recipe = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weekplan: null == weekplan
          ? _value.weekplan
          : weekplan // ignore: cast_nullable_to_non_nullable
              as String,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewWeekplanRecipesImplCopyWith<$Res>
    implements $NewWeekplanRecipesCopyWith<$Res> {
  factory _$$NewWeekplanRecipesImplCopyWith(_$NewWeekplanRecipesImpl value,
          $Res Function(_$NewWeekplanRecipesImpl) then) =
      __$$NewWeekplanRecipesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String weekplan, String recipe});
}

/// @nodoc
class __$$NewWeekplanRecipesImplCopyWithImpl<$Res>
    extends _$NewWeekplanRecipesCopyWithImpl<$Res, _$NewWeekplanRecipesImpl>
    implements _$$NewWeekplanRecipesImplCopyWith<$Res> {
  __$$NewWeekplanRecipesImplCopyWithImpl(_$NewWeekplanRecipesImpl _value,
      $Res Function(_$NewWeekplanRecipesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewWeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? weekplan = null,
    Object? recipe = null,
  }) {
    return _then(_$NewWeekplanRecipesImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weekplan: null == weekplan
          ? _value.weekplan
          : weekplan // ignore: cast_nullable_to_non_nullable
              as String,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewWeekplanRecipesImpl implements _NewWeekplanRecipes {
  _$NewWeekplanRecipesImpl(
      {required this.date, required this.weekplan, required this.recipe});

  factory _$NewWeekplanRecipesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewWeekplanRecipesImplFromJson(json);

  @override
  final String date;
  @override
  final String weekplan;
  @override
  final String recipe;

  @override
  String toString() {
    return 'NewWeekplanRecipes(date: $date, weekplan: $weekplan, recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewWeekplanRecipesImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weekplan, weekplan) ||
                other.weekplan == weekplan) &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, weekplan, recipe);

  /// Create a copy of NewWeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewWeekplanRecipesImplCopyWith<_$NewWeekplanRecipesImpl> get copyWith =>
      __$$NewWeekplanRecipesImplCopyWithImpl<_$NewWeekplanRecipesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewWeekplanRecipesImplToJson(
      this,
    );
  }
}

abstract class _NewWeekplanRecipes implements NewWeekplanRecipes {
  factory _NewWeekplanRecipes(
      {required final String date,
      required final String weekplan,
      required final String recipe}) = _$NewWeekplanRecipesImpl;

  factory _NewWeekplanRecipes.fromJson(Map<String, dynamic> json) =
      _$NewWeekplanRecipesImpl.fromJson;

  @override
  String get date;
  @override
  String get weekplan;
  @override
  String get recipe;

  /// Create a copy of NewWeekplanRecipes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewWeekplanRecipesImplCopyWith<_$NewWeekplanRecipesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
