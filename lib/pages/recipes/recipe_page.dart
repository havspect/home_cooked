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
        AsyncData(:final value) => ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: value.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
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
