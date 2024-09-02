import '../models/todo.dart';
import 'package:flutter/material.dart';
import '../widgets/task_list_item.dart';
import '../repositories/todo_repository.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  List<Todo> tasksList = [];

  final TextEditingController taskListController = TextEditingController();
  final TodoRepository todoRepository = TodoRepository();

  Todo? deletedTodo;
  int? deletedTodoPos;

  String? errorText;

  @override
  void initState() {
    super.initState();

    todoRepository.getTodoList().then((value) {
      setState(() {
        tasksList = value;
      });
    });
  }

  void onDelete(Todo todo) {
    deletedTodo = todo;
    deletedTodoPos = tasksList.indexOf(todo);

    setState(() {
      tasksList.remove(todo);
    });
    todoRepository.saveTodoList(tasksList);

    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        'Tarefa ${todo.title} removida com sucesso!',
        style: const TextStyle(
          color: Color(0xff060708),
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.white,
      action: SnackBarAction(
        label: "Desfazer",
        onPressed: () {
          setState(() {
            tasksList.insert(deletedTodoPos!, deletedTodo!);
          });
          todoRepository.saveTodoList(tasksList);
        },
        textColor: const Color(0xff00d7f3),
      ),
      duration: const Duration(seconds: 5),
    ));
  }

  void showDeleteAllTaskDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Limpar Tudo?"),
        content: const Text("Tem certeza que deseja apagar todas as tarefas?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xff00d7f3),
            ),
            child: const Text("Cancelar"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              deleteAllTask();
            },
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xffff0000),
            ),
            child: const Text("Limpar Tudo"),
          ),
        ],
      ),
    );
  }

  void deleteAllTask() {
    setState(() {
      tasksList.clear();
    });
    todoRepository.saveTodoList(tasksList);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: taskListController,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Adicione uma tarefa',
                          errorText: errorText,
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff00d7f3),
                              width: 2,
                            ),
                          ),
                          labelStyle: const TextStyle(
                            color: Color(0xff00d7f3),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        String text = taskListController.text;
                        if (text.isEmpty) {
                          setState(() {
                            errorText = 'O titulo não pode ser vazio!';
                          });
                          return;
                        }

                        setState(() {
                          Todo newTodo = Todo(
                            title: text,
                            dateTime: DateTime.now(),
                          );
                          tasksList.add(newTodo);
                          errorText = null;
                        });
                        taskListController.clear();
                        todoRepository.saveTodoList(tasksList);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff00d7f3),
                        //fixedSize: const Size(70, 60),
                        padding: const EdgeInsets.all(14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (Todo todo in tasksList)
                        TaskListItem(
                          todo: todo,
                          onDelete: onDelete,
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          "Você possui ${tasksList.length} tarefas pendentes!"),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: showDeleteAllTaskDialog,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff00d7f3),
                        padding: const EdgeInsets.all(14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Limpar Tudo",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
