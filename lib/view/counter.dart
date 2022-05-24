import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter ({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _counter = 0;
  
  @override
  Widget build(BuildContext context) {

    const titleFontSize = 30.0;
    const paragraphFontSize = 25.0;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 99, 71),
        title: const Text('Counter'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Number of taps",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize,
              ),
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: paragraphFontSize,
              ),
            ),
          ]
        )
      ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() => _counter--),
            backgroundColor: Colors.red,
            child: const Icon(Icons.arrow_circle_down_rounded),
            tooltip: 'Decrement Counter',
          ),
          const SizedBox(width: 15),
          FloatingActionButton(
            onPressed: () => setState(() => _counter=0),
            backgroundColor: Colors.grey,
            child: const Icon(Icons.restart_alt_rounded),
            tooltip: 'Decrement Counter',
          ),
          const SizedBox(width: 15),
          FloatingActionButton(
            onPressed: () => setState(() => _counter++),
            backgroundColor: Colors.green,
            child: const Icon(Icons.arrow_circle_up_outlined),
            tooltip: 'Increment Counter',
          ),
        ],
      ),

    );
  }
}