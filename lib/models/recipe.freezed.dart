// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? text,
      String? source,
      String? link,
      String? image});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = freezed,
    Object? source = freezed,
    Object? link = freezed,
    Object? image = freezed,
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
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeImplCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$RecipeImplCopyWith(
          _$RecipeImpl value, $Res Function(_$RecipeImpl) then) =
      __$$RecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? text,
      String? source,
      String? link,
      String? image});
}

/// @nodoc
class __$$RecipeImplCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$RecipeImpl>
    implements _$$RecipeImplCopyWith<$Res> {
  __$$RecipeImplCopyWithImpl(
      _$RecipeImpl _value, $Res Function(_$RecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = freezed,
    Object? source = freezed,
    Object? link = freezed,
    Object? image = freezed,
  }) {
    return _then(_$RecipeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeImpl implements _Recipe {
  _$RecipeImpl(
      {required this.id,
      required this.title,
      this.text,
      this.source,
      this.link,
      this.image});

  factory _$RecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? text;
  @override
  final String? source;
  @override
  final String? link;
  @override
  final String? image;

  @override
  String toString() {
    return 'Recipe(id: $id, title: $title, text: $text, source: $source, link: $link, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, text, source, link, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      __$$RecipeImplCopyWithImpl<_$RecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeImplToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  factory _Recipe(
      {required final String id,
      required final String title,
      final String? text,
      final String? source,
      final String? link,
      final String? image}) = _$RecipeImpl;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$RecipeImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get text;
  @override
  String? get source;
  @override
  String? get link;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewRecipe _$NewRecipeFromJson(Map<String, dynamic> json) {
  return _NewRecipe.fromJson(json);
}

/// @nodoc
mixin _$NewRecipe {
  String get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewRecipeCopyWith<NewRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRecipeCopyWith<$Res> {
  factory $NewRecipeCopyWith(NewRecipe value, $Res Function(NewRecipe) then) =
      _$NewRecipeCopyWithImpl<$Res, NewRecipe>;
  @useResult
  $Res call({String title, String? link, String? text, String? source});
}

/// @nodoc
class _$NewRecipeCopyWithImpl<$Res, $Val extends NewRecipe>
    implements $NewRecipeCopyWith<$Res> {
  _$NewRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = freezed,
    Object? text = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewRecipeImplCopyWith<$Res>
    implements $NewRecipeCopyWith<$Res> {
  factory _$$NewRecipeImplCopyWith(
          _$NewRecipeImpl value, $Res Function(_$NewRecipeImpl) then) =
      __$$NewRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? link, String? text, String? source});
}

/// @nodoc
class __$$NewRecipeImplCopyWithImpl<$Res>
    extends _$NewRecipeCopyWithImpl<$Res, _$NewRecipeImpl>
    implements _$$NewRecipeImplCopyWith<$Res> {
  __$$NewRecipeImplCopyWithImpl(
      _$NewRecipeImpl _value, $Res Function(_$NewRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = freezed,
    Object? text = freezed,
    Object? source = freezed,
  }) {
    return _then(_$NewRecipeImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewRecipeImpl implements _NewRecipe {
  _$NewRecipeImpl({required this.title, this.link, this.text, this.source});

  factory _$NewRecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewRecipeImplFromJson(json);

  @override
  final String title;
  @override
  final String? link;
  @override
  final String? text;
  @override
  final String? source;

  @override
  String toString() {
    return 'NewRecipe(title: $title, link: $link, text: $text, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewRecipeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, text, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewRecipeImplCopyWith<_$NewRecipeImpl> get copyWith =>
      __$$NewRecipeImplCopyWithImpl<_$NewRecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewRecipeImplToJson(
      this,
    );
  }
}

abstract class _NewRecipe implements NewRecipe {
  factory _NewRecipe(
      {required final String title,
      final String? link,
      final String? text,
      final String? source}) = _$NewRecipeImpl;

  factory _NewRecipe.fromJson(Map<String, dynamic> json) =
      _$NewRecipeImpl.fromJson;

  @override
  String get title;
  @override
  String? get link;
  @override
  String? get text;
  @override
  String? get source;
  @override
  @JsonKey(ignore: true)
  _$$NewRecipeImplCopyWith<_$NewRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
