import 'package:hive/hive.dart';

class ToDoDataBase {
  // empty list
  List toDoList = [];

  // reference the hive box
  final _mybox = Hive.box('mybox');

  // run this method if this is the first time opening the app
  void createInitialData() {
    toDoList = [
      ['Play Football', false],
      ['Code with Otabek', false]
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  // update data from database
  void updateData() {
    _mybox.put('TODOLIST', toDoList);
  }
}
