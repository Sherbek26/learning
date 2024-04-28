// NewProduct.dart (UI)
import 'package:flutter/material.dart';

class NewProduct extends StatefulWidget {
  const NewProduct({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewProduct> {
  late TextEditingController _titleController;
  late TextEditingController _bodyController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _bodyController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void submitNewPost() async {}

    return Material(
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: "Title"),
            ),
            TextField(
              controller: _bodyController,
              decoration: const InputDecoration(labelText: "Body"),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: submitNewPost,
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
