import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_cooked/main.dart';
import 'package:home_cooked/models/user.dart';
import 'package:pocketbase/pocketbase.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final validatePassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   email.dispose();
  //   password.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Form(
      key: _formKey,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    "Create a new user account to sign in for home-cooked. The app, that acts as your personal cookbook",
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: "Name*"),
                  controller: name),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: "E-Mail*"),
                  controller: email),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                    helperText: 'Password must be between 8 and 72 chars.',
                    border: UnderlineInputBorder(),
                    labelText: "Password*"),
                controller: password,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Validate Password*"),
                controller: validatePassword,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        foregroundColor:
                            Theme.of(context).colorScheme.onSecondary),
                    onPressed: () {
                      context.goNamed('sign-in');
                    },
                    child: const Text('Back to sign in')),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () async {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );

                      final pb = getIt<PocketBase>();
                      RecordModel? user;

                      NewUser newUser = NewUser(
                          // username: email.value.text,
                          email: email.value.text,
                          name: name.value.text,
                          password: password.value.text,
                          passwordConfirm: validatePassword.value.text);

                      try {
                        user = await pb
                            .collection('users')
                            .create(body: newUser.toJson());
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Error loging-in')),
                        );
                      }
                      if (user != null) {
                        context.go('/collections');
                      }
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
            // GoogleAuthButton(
            //   onPressed: () async {
            //     final pb = getIt<PocketBase>();

            //     try {
            //       final authData = await pb
            //           .collection('users')
            //           .authWithOAuth2('google', (url) async {
            //         // or use something like flutter_custom_tabs to make the transitions between native and web content more seamless
            //         await launchUrl(url);
            //       });
            //     } on Exception catch (e) {
            //       // TODO
            //       print(e);
            //     }
            //   },
            // )
          ],
        ),
      ),
    )));
  }
}
