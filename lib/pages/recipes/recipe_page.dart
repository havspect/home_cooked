import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_cooked/models/recipe.dart';
import 'package:home_cooked/providers/recipe_list_provider.dart';

class RecipeListPage extends ConsumerWidget {
  const RecipeListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Recipe>> recipes = ref.watch(recipeListProvider);

    return Container(
      child: switch (recipes) {
        AsyncData(:final value) => CarouselView(
            scrollDirection: Axis.vertical,
            itemExtent: double.infinity,
            children: List<Widget>.generate(10, (int index) {
              return Center(child: Text('Item $index'));
            }),
          ),
        AsyncError() => const Text('ooops'),
        _ => const Center(
            child: CircularProgressIndicator(),
          )
      },
    );
  }
}
