import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoappfirebase/todo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController titleTEController = TextEditingController();
  List<todo> todos = [];
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: AppBar(
            title: const Text(
              "Todo App",
              style: TextStyle(color: Colors.pink),
            ),
            automaticallyImplyLeading: false,
            actions: [
              GestureDetector(
                  onTap: () {
                    todos.clear();
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.delete_sweep_sharp,
                    size: 28,
                    color: Colors.red,
                  )),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  margin: EdgeInsets.all(10)  ,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center ,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: titleTEController,
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                      todos.add(todo(titleTEController.text.trim(), false));
                            titleTEController.clear();
                            if (mounted) {
                              setState(() {});
                            }
                          },
                          child: const SizedBox(
                              width: 250, child: Center(child: Text("Add")))),
                    ],
                  ),
                );
              });
        },
        child: const Icon(
          Icons.add,
          size: 26,
        ),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: ListTile(
                      onLongPress: () {
                        todos[index].isDone = !todos[index].isDone;
                        if (mounted) {
                          setState(() {});
                        }
                      },
                      leading: todos[index].isDone
                          ? const Icon(
                              Icons.done_all_outlined,
                              size: 24,
                              color: Colors.green,
                            )
                          : const Icon(
                              Icons.circle_outlined,
                              size: 24,
                              color: Colors.green,
                            ),
                      title: Text(
                        todos[index].title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            todos.removeAt(index);
                          },
                          icon: const Icon(Icons.delete_forever,
                              size: 24, color: Colors.red)),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
