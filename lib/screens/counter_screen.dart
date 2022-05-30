import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0; //propiedad (cambia el estado)

  void increase() {
    // 1 - crear función
    counter++;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    //int counter = 0; variable (no cambia el estado)
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center, -> centrado al widget + grande, no a la pantalla
          children: [
            const Text('Clicks Counter', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingButtons(
        increaseFn: increase, // 4 - mandar función como valor de propiedad
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingButtons extends StatelessWidget {
  final Function increaseFn; // 2 - crear propiedad
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingButtons({
    Key? key,
    required this.increaseFn, // 3 - inicializar propiedad
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
            child: const Icon(Icons.restart_alt), onPressed: () => resetFn()),
        FloatingActionButton(
            child: const Icon(Icons.plus_one), onPressed: () => increaseFn()),
      ],
    );
  }
}
