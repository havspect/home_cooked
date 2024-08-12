import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:home_cooked/main.dart';
import 'package:home_cooked/features/collection/model/collection.dart';
import 'package:home_cooked/features/collection/provider/collections.dart';
import 'package:pocketbase/pocketbase.dart';

class CollectionListPage extends ConsumerStatefulWidget {
  final Collection? collection;

  const CollectionListPage({super.key, this.collection});

  @override
  _CollectionListPageState createState() => _CollectionListPageState();
}

class _CollectionListPageState extends ConsumerState<CollectionListPage> {
  int? selectedCollection = 0;

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Collection>> collections =
        ref.watch(collectionListProvider);

    final pb = getIt<PocketBase>();

    final uri = pb
        .getFileUrl(pb.authStore.model, pb.authStore.model.data['avatar'])
        .toString();

    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: new BoxConstraints(maxWidth: 800),
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
                "Kollektionen",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              switch (collections) {
                AsyncData(:final value) => Column(
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.all(8),
                            itemCount: value.length +
                                1, // Increased itemCount by 1 to include the add button
                            separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              if (index == value.length) {
                                // This is the last item, return the "Add" button
                                return ActionChip(
                                  avatar: Icon(Icons.add),
                                  label: const Text("Add"),
                                  onPressed: () {
                                    GoRouter.of(context)
                                        .pushNamed('collection-add');
                                  },
                                );
                              } else {
                                // Return the regular chips
                                return ChoiceChip(
                                  label: Text('${value[index].title}'),
                                  selected: selectedCollection == index,
                                  onSelected: (bool selected) {
                                    setState(() {
                                      selectedCollection = selected ? index : 0;
                                    });
                                  },
                                );
                              }
                            },
                          )),
                      SizedBox(
                        height: 300,
                        child: CarouselView(
                            scrollDirection: Axis.horizontal,
                            itemExtent: MediaQuery.sizeOf(context).width - 32,
                            onTap: (index) => GoRouter.of(context).pushNamed(
                                "recipe",
                                pathParameters: {'id': value[index].id}),
                            children: List.generate(
                                value[selectedCollection ?? 0]
                                        .recipes
                                        ?.length ??
                                    0, (int index) {
                              final _tmp = value[selectedCollection ?? 0]
                                  .expand!
                                  .recipes![index];
                              return Container(
                                child: Center(child: Text(_tmp.title)),
                                color: Colors.green,
                              );
                            })),
                      ),
                    ],
                  ),
                AsyncError() => const Text('ooops'),
                _ => const Center(
                    child: CircularProgressIndicator(),
                  )
              },

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
      ),
    );
  }
}
