import 'package:flutter/material.dart';

class DemoButtons extends StatefulWidget {
  const DemoButtons({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DemoButtonsState();
  }
}

class _DemoButtonsState extends State<DemoButtons> {
  bool _isUnderstood = false;

  @override
  Widget build(BuildContext context) {
    // This build will happen each time you click 'Yes' or 'No'.
    return Column(
        mainAxisSize: MainAxisSize.min, // Only get as tall as needed
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _isUnderstood = false;
                  });
                },
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _isUnderstood = true;
                  });
                },
                child: const Text('Yes'),
              ),
            ],
          ),
          _isUnderstood ? const Text('Awesome!') : const SizedBox(),
        ]);
  }
}
