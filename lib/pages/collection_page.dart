import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_cooked/models/collection.dart';
import 'package:home_cooked/providers/collection_provider.dart';

class CollectionListPage extends ConsumerWidget {
  const CollectionListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Collection>> collections =
        ref.watch(collectionListProvider);

    return Container(
      child: switch (collections) {
        AsyncData(:final value) => ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: value.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                child: Center(child: Text('Entry ${value[index]}')),
              );
            },
          ),
        AsyncError() => const Text('ooops'),
        _ => const Center(
            child: CircularProgressIndicator(),
          )
      },
    );
  }
}
