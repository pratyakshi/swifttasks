import 'package:riverpod/riverpod.dart';
import 'package:swifttasks/services/todo_services.dart';
import 'package:swifttasks/model/todo_model.dart';

final titleTaskProvider = StateProvider<String>((ref) => '');
final descriptionProvider = StateProvider<String>((ref) => '');

final serviceProvider = Provider<TodoService>((ref) {
  return TodoService();
});
