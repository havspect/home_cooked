import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_cooked/models/recipe.dart';
import 'package:home_cooked/providers/recipe_provider.dart';
import 'package:riverpod/riverpod.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // We can therefore keep using "ref.watch" inside "build".

    return Center(
      child: ElevatedButton(
          onPressed: () {
            ref
                .read(recipeListProvider.notifier)
                .addRecipe(NewRecipe(title: "title"));
          },
          child: Text('Add Recipe')),
    );
  }
}
