// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$collectionEntryHash() => r'c92e73a8272da6493b9d8a0eeb61ac09f551a788';

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

abstract class _$CollectionEntry
    extends BuildlessAutoDisposeAsyncNotifier<Collection> {
  late final String id;

  FutureOr<Collection> build(
    String id,
  );
}

/// See also [CollectionEntry].
@ProviderFor(CollectionEntry)
const collectionEntryProvider = CollectionEntryFamily();

/// See also [CollectionEntry].
class CollectionEntryFamily extends Family<AsyncValue<Collection>> {
  /// See also [CollectionEntry].
  const CollectionEntryFamily();

  /// See also [CollectionEntry].
  CollectionEntryProvider call(
    String id,
  ) {
    return CollectionEntryProvider(
      id,
    );
  }

  @override
  CollectionEntryProvider getProviderOverride(
    covariant CollectionEntryProvider provider,
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
  String? get name => r'collectionEntryProvider';
}

/// See also [CollectionEntry].
class CollectionEntryProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CollectionEntry, Collection> {
  /// See also [CollectionEntry].
  CollectionEntryProvider(
    String id,
  ) : this._internal(
          () => CollectionEntry()..id = id,
          from: collectionEntryProvider,
          name: r'collectionEntryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$collectionEntryHash,
          dependencies: CollectionEntryFamily._dependencies,
          allTransitiveDependencies:
              CollectionEntryFamily._allTransitiveDependencies,
          id: id,
        );

  CollectionEntryProvider._internal(
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
  FutureOr<Collection> runNotifierBuild(
    covariant CollectionEntry notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(CollectionEntry Function() create) {
    return ProviderOverride(
      origin: this,
      override: CollectionEntryProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<CollectionEntry, Collection>
      createElement() {
    return _CollectionEntryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CollectionEntryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CollectionEntryRef on AutoDisposeAsyncNotifierProviderRef<Collection> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CollectionEntryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CollectionEntry, Collection>
    with CollectionEntryRef {
  _CollectionEntryProviderElement(super.provider);

  @override
  String get id => (origin as CollectionEntryProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
