import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../core/models/models.dart';

class DraggableToDoWidget extends StatelessWidget {
  const DraggableToDoWidget({super.key, required this.toDoListModel});

  final ToDoListModel toDoListModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    toDoListModel.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    DateFormat("yyyy-MM-dd").format(toDoListModel.dueDate),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Text(
                toDoListModel.toDoStatus.name.toUpperCase(),
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.white.withOpacity(0.3),
        ),
      ],
    );
  }
}
