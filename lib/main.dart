import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:home_cooked/router.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  late PocketBase pb;

  if (!kIsWeb) {
    final prefs = await SharedPreferences.getInstance();

    final store = AsyncAuthStore(
      save: (String data) async => prefs.setString('pb_auth', data),
      initial: prefs.getString('pb_auth'),
    );

    pb = PocketBase('http://127.0.0.1:8090', authStore: store);
  } else {
    pb = PocketBase('http://127.0.0.1:8090');
  }

  getIt.registerSingleton<PocketBase>(pb);

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Home Cooked',
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent)),
      routerConfig: router,
    );
  }
}
