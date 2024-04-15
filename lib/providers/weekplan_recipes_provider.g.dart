// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekplan_recipes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weekplanRecipesListHash() =>
    r'7159e1affd70d94719021198f6ab5c96c1befd73';

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

abstract class _$WeekplanRecipesList
    extends BuildlessAutoDisposeAsyncNotifier<List<WeekplanRecipes>> {
  late final String id;

  FutureOr<List<WeekplanRecipes>> build(
    String id,
  );
}

/// See also [WeekplanRecipesList].
@ProviderFor(WeekplanRecipesList)
const weekplanRecipesListProvider = WeekplanRecipesListFamily();

/// See also [WeekplanRecipesList].
class WeekplanRecipesListFamily
    extends Family<AsyncValue<List<WeekplanRecipes>>> {
  /// See also [WeekplanRecipesList].
  const WeekplanRecipesListFamily();

  /// See also [WeekplanRecipesList].
  WeekplanRecipesListProvider call(
    String id,
  ) {
    return WeekplanRecipesListProvider(
      id,
    );
  }

  @override
  WeekplanRecipesListProvider getProviderOverride(
    covariant WeekplanRecipesListProvider provider,
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
  String? get name => r'weekplanRecipesListProvider';
}

/// See also [WeekplanRecipesList].
class WeekplanRecipesListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    WeekplanRecipesList, List<WeekplanRecipes>> {
  /// See also [WeekplanRecipesList].
  WeekplanRecipesListProvider(
    String id,
  ) : this._internal(
          () => WeekplanRecipesList()..id = id,
          from: weekplanRecipesListProvider,
          name: r'weekplanRecipesListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weekplanRecipesListHash,
          dependencies: WeekplanRecipesListFamily._dependencies,
          allTransitiveDependencies:
              WeekplanRecipesListFamily._allTransitiveDependencies,
          id: id,
        );

  WeekplanRecipesListProvider._internal(
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
  FutureOr<List<WeekplanRecipes>> runNotifierBuild(
    covariant WeekplanRecipesList notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(WeekplanRecipesList Function() create) {
    return ProviderOverride(
      origin: this,
      override: WeekplanRecipesListProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<WeekplanRecipesList,
      List<WeekplanRecipes>> createElement() {
    return _WeekplanRecipesListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeekplanRecipesListProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeekplanRecipesListRef
    on AutoDisposeAsyncNotifierProviderRef<List<WeekplanRecipes>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _WeekplanRecipesListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WeekplanRecipesList,
        List<WeekplanRecipes>> with WeekplanRecipesListRef {
  _WeekplanRecipesListProviderElement(super.provider);

  @override
  String get id => (origin as WeekplanRecipesListProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
