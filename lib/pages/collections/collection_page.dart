import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/collection.dart';
import 'package:home_cooked/providers/collection_list_provider.dart';
import 'package:pocketbase/pocketbase.dart';

class CollectionListPage extends ConsumerWidget {
  const CollectionListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Collection>> collections =
        ref.watch(collectionListProvider);

    final pb = getIt<PocketBase>();

    final uri = pb
        .getFileUrl(pb.authStore.model, pb.authStore.model.data['avatar'])
        .toString();

    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        constraints: new BoxConstraints(maxWidth: 600),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: SvgPicture.network(
                    uri,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Tim'), Text("Welcome back")],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Deine Rezeptkollektionen",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            switch (collections) {
              AsyncData(:final value) => SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: value.length,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox.square(
                        dimension: 142,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(child: Text(value[index].title))),
                      );
                    },
                  ),
                ),
              AsyncError() => const Text('ooops'),
              _ => const Center(
                  child: CircularProgressIndicator(),
                )
            },
            Text(
              "Deine Woche",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Deine Inspirationen",
              style: Theme.of(context).textTheme.bodyLarge,
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
        ),
      ),
    );
  }
}
