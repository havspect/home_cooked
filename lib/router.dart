import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_cooked/features/recipe/provider/recipes.dart';
import 'package:home_cooked/features/recipe/screens/recipe.dart';
import 'package:home_cooked/main.dart';
import 'package:home_cooked/features/collection/screens/collection_add.dart';
import 'package:home_cooked/features/collection/screens/collections.dart';
import 'package:home_cooked/features/website/home_page.dart';
import 'package:home_cooked/features/recipe/screens/recipe_add.dart';
import 'package:home_cooked/features/auth/screens/sign_in_page.dart';
import 'package:home_cooked/features/auth/screens/sign_up_page.dart';
import 'package:home_cooked/pages/weekplan/weekplan_page.dart';
import 'package:home_cooked/widgets/bottom_navigation.dart';
import 'package:pocketbase/pocketbase.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
// final _shellNavigatorKey = GlobalKey<NavigatorState>();

// GoRouter configuration
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/sign-in',
      name: 'sign-in',
      redirect: (context, state) {
        final PocketBase pb = getIt<PocketBase>();

        if (pb.authStore.isValid) {
          return '/collections';
        } else {
          return null;
        }
      },
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/sign-up',
      name: 'sign-up',
      redirect: (context, state) {
        final PocketBase pb = getIt<PocketBase>();

        if (pb.authStore.isValid) {
          return '/collections';
        } else {
          return null;
        }
      },
      builder: (context, state) => const SignUpPage(),
    ),
    ShellRoute(
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state, child) => BottomNavigation(child: child),
        routes: [
          GoRoute(
              name: 'collections',
              path: '/collections',
              builder: (context, state) => const CollectionListPage(),
              routes: [
                GoRoute(
                  path: 'add',
                  name: 'collection-add',
                  builder: (context, state) => const CollectionAdd(),
                ),
                GoRoute(
                  path: 'details',
                  name: 'collection-details',
                  builder: (context, state) => const CollectionAdd(),
                )
              ]),
          GoRoute(
              name: 'recipe',
              path: '/recipe',
              builder: (context, state) => const RecipePage(),
              routes: [
                GoRoute(
                  path: 'add',
                  name: 'recipe-add',
                  // TODO: Add from link & Pic
                  builder: (context, state) => const RecipeAddPage(),
                ),
              ]),
          GoRoute(
            name: 'weekplan',
            path: '/weekplan',
            builder: (context, state) => const WeekPlanPage(),
          )
        ])
  ],
  redirect: (context, state) {
    final PocketBase pb = getIt<PocketBase>();
    if (pb.authStore.isValid) {
      return null;
    } else {
      if (state.uri.toString() == '/sign-up') return null;
      return '/sign-in';
      // return null;
    }
  },
);
