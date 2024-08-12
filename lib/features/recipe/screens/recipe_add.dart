// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:home_cooked/features/recipe/model/recipe.dart';
import 'package:home_cooked/features/recipe/provider/recipe.dart';
import 'package:http/http.dart';
import 'package:cross_file_image/cross_file_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_picker/image_picker.dart';

class RecipeAddPage extends ConsumerStatefulWidget {
  final Recipe? recipe;

  const RecipeAddPage({super.key, this.recipe});

  @override
  _RecipeAddState createState() => _RecipeAddState();
}

class _RecipeAddState extends ConsumerState<RecipeAddPage> {
  XFile? _imageFile;
  bool _isExternal = false;
  String? _externalImage;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _sourceController = TextEditingController();
  final TextEditingController _linkController = TextEditingController();

  Future selectImage() async {
    final imagefile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _imageFile = imagefile;
    });
  }

  @override
  void initState() {
    super.initState();

    if (widget.recipe != null) {
      _titleController.text = widget.recipe!.title;
      _linkController.text = widget.recipe!.link ?? '';

      setState(() {
        _isExternal = true;
        if (widget.recipe!.imageUrl != null) {
          _externalImage = widget.recipe!.imageUrl;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (_imageFile != null || _externalImage != null)
            ConstrainedBox(
                constraints:
                    const BoxConstraints(maxWidth: 500, maxHeight: 300),
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: (_externalImage == null)
                        ? Image(
                            image: XFileImage(_imageFile!),
                            fit: BoxFit.fill,
                          )
                        : CachedNetworkImage(
                            imageUrl:
                                'https://corsproxy.io/?${Uri.encodeFull(_externalImage!)}',
                            fit: BoxFit.fill,
                          ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton.filledTonal(
                          alignment: Alignment.bottomRight,
                          onPressed: () async {
                            await selectImage();
                          },
                          icon: const Icon(Icons.edit_rounded)),
                    ),
                  )
                ])),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    if (_imageFile == null || _externalImage == null)
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.primary),
                          margin: const EdgeInsets.only(bottom: 8),
                          constraints: const BoxConstraints(
                              minHeight: 200, minWidth: double.infinity),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                                Text(
                                  "Please select an image for the recipe.",
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () async {
                          await selectImage();
                        },
                      ),
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
                    const SizedBox(height: 10),
                    TextFormField(
                      minLines: 10,
                      maxLines: 20,
                      keyboardType: TextInputType.multiline,
                      controller: _descController,
                      decoration: const InputDecoration(
                          labelText: 'Beschreibung',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _sourceController,
                      decoration: const InputDecoration(
                          labelText: 'Herkunft des Rezeptes',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text('Ist das Rezept von einer Website?'),
                        const Spacer(),
                        Switch(
                          onChanged: (bool newValue) {
                            setState(() {
                              _isExternal = newValue;
                            });
                          },
                          value: _isExternal,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    if (_isExternal)
                      TextFormField(
                        controller: _linkController,
                        decoration: const InputDecoration(
                            labelText: 'Url des Rezeptes',
                            border: OutlineInputBorder()),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a link';
                          } else {
                            return null;
                          }
                        },
                      ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Add Recipe'),
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                String imagePath = '';
                Uint8List bytes = Uint8List(0);

                if (_externalImage != null) {
                  imagePath =
                      'https://corsproxy.io/?${Uri.encodeFull(_externalImage!)}';

                  bytes = await readBytes(Uri.parse(imagePath));
                } else if (_imageFile != null) {
                  imagePath = _imageFile!.path;

                  bytes = await _imageFile!.readAsBytes();
                }

                final newRecipe = NewRecipe(
                    title: _titleController.text,
                    link: _linkController.text,
                    source: _sourceController.text,
                    note: _descController.text);

                await createRecipe(newRecipe);

                const sucessSnackBar = SnackBar(
                  content: Text('Sucess.'),
                  backgroundColor: Colors.green,
                );

                ScaffoldMessenger.of(context).showSnackBar(sucessSnackBar);

                context.goNamed('collections');
              }
            },
          ),
        ],
      ),
    );
  }
}
