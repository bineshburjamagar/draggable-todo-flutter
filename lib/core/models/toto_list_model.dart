enum ToDoStatus { inProgress, completed, uncompleted }

class ToDoListModel {
  final String title;
  final DateTime dueDate;
  final ToDoStatus toDoStatus;

  ToDoListModel({
    required this.title,
    required this.dueDate,
    required this.toDoStatus,
  });
}

List<ToDoListModel> dummyModel = [
  ToDoListModel(
    title: 'Go to gym',
    dueDate: DateTime.now(),
    toDoStatus: ToDoStatus.uncompleted,
  ),
  ToDoListModel(
    title: 'Buy clothes',
    dueDate: DateTime.now(),
    toDoStatus: ToDoStatus.inProgress,
  ),
];
