import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak33_firebase/app/model.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  bool isCompleted = false;
  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _descriptioncontroller = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
//////////////////////////////////////
  Future<void> addTodo() async {
    final db = FirebaseFirestore.instance;
    final todos = Todo(
        title: _titlecontroller.text,
        description: _descriptioncontroller.text,
        isCompleted: isCompleted,
        author: _authorController.text);
    await db.collection("todos").add(todos.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TodoView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, top: 8, right: 5),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titlecontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Title write";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: "title",
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _descriptioncontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "write description";
                  } else {
                    return null;
                  }
                },
                maxLines: 10,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: "description",
                ),
              ),
              CheckboxListTile(
                  value: isCompleted,
                  onChanged: (v) {
                    setState(() {
                      isCompleted = v!;
                    });
                  }),
              const SizedBox(height: 10),
              TextFormField(
                controller: _authorController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "write author";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: "author",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () async {
                  //validate - ичине текст жазылган болсо
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            backgroundColor: Colors.white.withOpacity(0.6),
                            title:
                                const Text('Сиздин маалыматыныз жонотулуудо'),
                            children: const [
                              CupertinoActivityIndicator(
                                radius: 20,
                                color: Colors.blue,
                              )
                            ],
                          );
                        });
                    await addTodo();
                    // ignore: use_build_context_synchronously
                    Navigator.popUntil(context, (route) => route.isFirst);
                  } else {
                    null;
                  }
                },
                icon: const Icon(Icons.arrow_upward),
                label: const Text(
                  "Отправить",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
