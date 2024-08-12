// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recipeEntryHash() => r'902c1068d4e789e251dbb60f2488482a8a461bc6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$RecipeEntry extends BuildlessAutoDisposeAsyncNotifier<Recipe> {
  late final String id;

  FutureOr<Recipe> build(
    String id,
  );
}

/// See also [RecipeEntry].
@ProviderFor(RecipeEntry)
const recipeEntryProvider = RecipeEntryFamily();

/// See also [RecipeEntry].
class RecipeEntryFamily extends Family<AsyncValue<Recipe>> {
  /// See also [RecipeEntry].
  const RecipeEntryFamily();

  /// See also [RecipeEntry].
  RecipeEntryProvider call(
    String id,
  ) {
    return RecipeEntryProvider(
      id,
    );
  }

  @override
  RecipeEntryProvider getProviderOverride(
    covariant RecipeEntryProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'recipeEntryProvider';
}

/// See also [RecipeEntry].
class RecipeEntryProvider
    extends AutoDisposeAsyncNotifierProviderImpl<RecipeEntry, Recipe> {
  /// See also [RecipeEntry].
  RecipeEntryProvider(
    String id,
  ) : this._internal(
          () => RecipeEntry()..id = id,
          from: recipeEntryProvider,
          name: r'recipeEntryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recipeEntryHash,
          dependencies: RecipeEntryFamily._dependencies,
          allTransitiveDependencies:
              RecipeEntryFamily._allTransitiveDependencies,
          id: id,
        );

  RecipeEntryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<Recipe> runNotifierBuild(
    covariant RecipeEntry notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(RecipeEntry Function() create) {
    return ProviderOverride(
      origin: this,
      override: RecipeEntryProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RecipeEntry, Recipe> createElement() {
    return _RecipeEntryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecipeEntryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RecipeEntryRef on AutoDisposeAsyncNotifierProviderRef<Recipe> {
  /// The parameter `id` of this provider.
  String get id;
}

class _RecipeEntryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RecipeEntry, Recipe>
    with RecipeEntryRef {
  _RecipeEntryProviderElement(super.provider);

  @override
  String get id => (origin as RecipeEntryProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
