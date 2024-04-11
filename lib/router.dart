import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_cooked/main.dart';
import 'package:home_cooked/pages/collection_page.dart';
import 'package:home_cooked/pages/home_page.dart';
import 'package:home_cooked/pages/recipe_page.dart';
import 'package:home_cooked/pages/sign_in_page.dart';
import 'package:home_cooked/widgets/bottom_navigation.dart';
import 'package:pocketbase/pocketbase.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

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
      builder: (context, state) => const SignInPage(),
    ),
    ShellRoute(
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state, child) => BottomNavigation(child: child),
        routes: [
          GoRoute(
            path: '/collections',
            builder: (context, state) => const CollectionListPage(),
          ),
          GoRoute(
            path: '/recipes',
            builder: (context, state) => const RecipeListPage(),
          ),
          GoRoute(
            path: '/weekplan',
            builder: (context, state) => const RecipeListPage(),
          )
        ])
  ],
  redirect: (context, state) {
    final PocketBase pb = getIt<PocketBase>();

    if (pb.authStore.isValid) {
      return null;
    } else {
      // return '/sign-in';
      return null;
    }
  },
);