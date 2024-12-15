import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Todotile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onchanged;
  Todotile({
    super.key,
    required this.onchanged,
    required this.taskname,
    required this.taskcompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.yellow[400],
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: [
            Checkbox(
              value: taskcompleted,
              onChanged: onchanged,
              activeColor: Colors.black,
            ),
            Text(
              taskname,
              style: TextStyle(
                decoration: taskcompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
