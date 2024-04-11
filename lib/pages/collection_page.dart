import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/collection.dart';
import 'package:home_cooked/providers/collection_provider.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CollectionListPage extends ConsumerWidget {
  const CollectionListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Collection>> collections =
        ref.watch(collectionListProvider);

    final pb = getIt<PocketBase>();

    print(pb.authStore.model);

    final uri = pb
        .getFileUrl(pb.authStore.model, pb.authStore.model.data['avatar'])
        .toString();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            children: [
              ClipOval(
                child: SvgPicture.network(
                  uri,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Tim'), Text("Welcome back")],
              )
            ],
          ),
        ),
        // Container(
        //   child: switch (collections) {
        //     AsyncData(:final value) => ListView.builder(
        //         padding: const EdgeInsets.all(8),
        //         itemCount: value.length,
        //         itemBuilder: (BuildContext context, int index) {
        //           return SizedBox(
        //             height: 50,
        //             child: Center(child: Text('Entry ${value[index]}')),
        //           );
        //         },
        //       ),
        //     AsyncError() => const Text('ooops'),
        //     _ => const Center(
        //         child: CircularProgressIndicator(),
        //       )
        //   },
        // ),
      ],
    );
  }
}
