import 'package:riverpod/riverpod.dart';
import 'package:swifttasks/services/todo_services.dart';
import 'package:swifttasks/model/todo_model.dart';

final serviceProvider = StateProvider<TodoService>((ref) {
  return TodoService();
});
