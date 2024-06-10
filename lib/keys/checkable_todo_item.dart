import 'package:flutter/material.dart';

enum Priority { urgent, normal, low }

class CheckableTodoItem extends StatefulWidget {
  const CheckableTodoItem(this.text, this.priority, {super.key});

  final String text;
  final Priority priority;

  @override
  State<CheckableTodoItem> createState() => _CheckableTodoItemState();
}

// State objects are connected to Element objects which are connected to Widgets!
// So if A is checked, and B is not, and then they switch order and render accordingly, it will look like B is checked and A is not because the State didn't get the memo!
// Again, that's because the state is connected to the Element; not Widget!
// KEYS can solve this so that the Elements swap, and therefore the States will swap!
class _CheckableTodoItemState extends State<CheckableTodoItem> {
  var _done = false;

  void _setDone(bool? isChecked) {
    setState(() {
      _done = isChecked ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var icon = Icons.low_priority;

    if (widget.priority == Priority.urgent) {
      icon = Icons.notifications_active;
    }

    if (widget.priority == Priority.normal) {
      icon = Icons.list;
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(value: _done, onChanged: _setDone),
          const SizedBox(width: 6),
          Icon(icon),
          const SizedBox(width: 12),
          Text(widget.text),
        ],
      ),
    );
  }
}
