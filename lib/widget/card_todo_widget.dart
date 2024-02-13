import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardToDoWidget extends StatelessWidget {
  const CardToDoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 125,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Learning Stuff'),
                    subtitle: Text('Sudo Title'),
                    trailing: Transform.scale(
                      scale: 1.4,
                      child: Checkbox(
                        shape: const CircleBorder(),
                        value: true,
                        onChanged: (value) => print(value),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -12),
                    child: Transform.scale(
                      scale: 1.0, // Set your desired scale factor here
                      child: Container(
                        child: Column(
                          children: [
                            Divider(
                              thickness: 0.4,
                              color: Colors.amber,
                            ),
                            Row(
                              children: [
                                Text('Today'),
                                const Gap(
                                    12), // Assuming Gap is a custom widget you have
                                Text('9:15 PM-11:45 PM')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
