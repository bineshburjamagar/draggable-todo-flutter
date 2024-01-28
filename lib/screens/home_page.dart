import 'package:flutter/material.dart';
import 'package:todo_flutter/core/models/models.dart';
import 'package:todo_flutter/screens/screens.dart';
import 'package:todo_flutter/widgets/widgets.dart';
import '../components/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Todo List',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const Text(
            'In Progress',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.deepPurple,
            ),
            child: ReorderableList(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return DraggableToDoWidget(
                  key: Key(index.toString()),
                  toDoListModel: dummyModel[index],
                );
              },
              itemCount: dummyModel.length,
              onReorder: (oldIndex, newIndex) {},
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Completed',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const AddTaskPage();
              }),
            );
          },
        ),
      ),
    );
  }
}
