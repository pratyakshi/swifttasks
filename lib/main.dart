import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:swifttasks/common/show_model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'SwiftTasks',
    theme: ThemeData(), // customize theme
    home: const HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 242, 241),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 213, 215, 255),
        foregroundColor: Color.fromARGB(255, 61, 61, 61),
        elevation: 0,
        title: const ListTile(
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 147, 136, 180),
            radius: 30,
            // child: Image.asset('assets/profile.jpg'), remove const
          ),
          title: Text('Ratr'),
          subtitle: Text(
            'Tasks To Do',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.calendar_month),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today\'s Tasks',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 201, 181, 255),
                      foregroundColor: Color.fromARGB(255, 10, 11, 104),
                      elevation: 0,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () => showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      context: context,
                      builder: (context) => const AddNewTaskModel()),
                  child: Text(
                    '+ New Task',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Text('Saturday, 3 February'),
          ],
        ),
      ),
    );
  }
}
