import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_cooked/features/collection/model/collection.dart';

class CollectionAdd extends ConsumerStatefulWidget {
  final Collection? collection;

  const CollectionAdd({super.key, this.collection});

  @override
  _CollectionAddState createState() => _CollectionAddState();
}

class _CollectionAddState extends ConsumerState<CollectionAdd> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Neue Collection anlegen',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                        labelText: 'Title', border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
