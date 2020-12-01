/// Flutter code sample for AnimatedContainer

// The following example (depicted above) transitions an AnimatedContainer
// between two states. It adjusts the `height`, `width`, `color`, and
// [alignment] properties when tapped.
import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;
  bool red = false;
  bool yellow = false;
  bool green = false;
  Timer timer;

  // Timer.periodic(new Duration(seconds: 1), (timer) {
  // debugPrint(timer.tick.toString());
  // });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: 200.0,
          height: 200.0,
          color: selected ? Colors.red : Colors.blue,
          alignment:
          Alignment.center,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75),
        ),
      ),
    );
  }
}
