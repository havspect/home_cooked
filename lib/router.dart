import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_cooked/main.dart';
import 'package:home_cooked/pages/collections/collection_add.dart';
import 'package:home_cooked/pages/collections/collection_page.dart';
import 'package:home_cooked/pages/home_page.dart';
import 'package:home_cooked/pages/recipes/recipe_add_page.dart';
import 'package:home_cooked/pages/recipes/recipe_page.dart';
import 'package:home_cooked/pages/sign_in_page.dart';
import 'package:home_cooked/pages/sign_up_page.dart';
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
              name: 'recipes',
              path: '/recipes',
              builder: (context, state) => const RecipeListPage(),
              routes: [
                GoRoute(
                  path: 'add',
                  name: 'recipe-add',
                  // TODO: Add from link & Pic
                  builder: (context, state) => const RecipeAddPage(),
                ),
                GoRoute(
                  path: 'details',
                  name: 'recipe-details',
                  // TODO: Add Recipe Details
                  builder: (context, state) => const RecipeAddPage(),
                )
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
