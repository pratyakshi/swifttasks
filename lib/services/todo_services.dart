import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:swifttasks/model/todo_model.dart';

class TodoService {
  final todoCollection = FirebaseFirestore.instance.collection('todoApp');

  //CRUD

  //CREATE

  void addNewTask(TodoModel model) {
    todoCollection.add(model.toMap());
  }
}
