import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter ({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _counter = 0;

  void increaseCounter() => setState(() => _counter++);
  void decreaseCounter() => setState(() => _counter--);
  void resetCounter() => setState(() => _counter=0);
  
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
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

      floatingActionButton: FloatingCustomButton(
        increaseCounter: increaseCounter,
        decreaseCounter: decreaseCounter,
        resetCounter: resetCounter,
      ),

    );
  }
}

class FloatingCustomButton extends StatelessWidget {

  final Function increaseCounter;
  final Function decreaseCounter;
  final Function resetCounter;

  const FloatingCustomButton({
    Key? key,
    required this.increaseCounter,
    required this.decreaseCounter,
    required this.resetCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          onPressed: () => increaseCounter(),
          backgroundColor: Colors.red,
          child: const Icon(Icons.arrow_circle_down_rounded),
          tooltip: 'Decrement Counter',
        ),
        FloatingActionButton(
          onPressed: () => resetCounter(),
          backgroundColor: Colors.grey,
          child: const Icon(Icons.replay_outlined),
          tooltip: 'Decrement Counter',
        ),
        FloatingActionButton(
          onPressed: () => decreaseCounter(),
          backgroundColor: Colors.green,
          child: const Icon(Icons.arrow_circle_up_outlined),
          tooltip: 'Increment Counter',
        ),
      ],
    );
  }
}