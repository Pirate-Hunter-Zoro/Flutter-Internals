import 'package:flutter/material.dart';
import 'package:flutter_internals/demo_buttons.dart';

class UIUpdatesDemo extends StatefulWidget {
  const UIUpdatesDemo({super.key});

  @override
  State<UIUpdatesDemo> createState() {
    return _UIUpdatesDemo();
  }
}

class _UIUpdatesDemo extends State<UIUpdatesDemo> {
  @override
  Widget build(BuildContext context) {
    // This build will only occure ONCE when you launch the application and will not print again until you relaunch
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Do you understand how Flutter updates UIs?',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            // Everything that CHANGES when you tap the preceding 'Yes' or 'No' button is contained within the following widget:
            DemoButtons()
          ],
        ),
      ),
    );
  }
}
