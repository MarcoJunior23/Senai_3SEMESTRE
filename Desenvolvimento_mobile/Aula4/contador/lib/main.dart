import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;  // Variável que mantém o valor do contador.

  // Função para incrementar o contador.
  void _incrementCounter() {
    setState(() {
      _counter++;  // Incrementa o valor do contador.
    });
  }

  // Função para decrementar o contador.
  void _decrementCounter() {
    setState(() {
      _counter--;  // Decrementa o valor do contador.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Simples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Você pressionou o botão:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_counter',  // Exibe o valor do contador.
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Botão para incrementar o contador.
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Incrementar'),
                ),
                SizedBox(width: 20),  // Espaço entre os botões.
                // Botão para decrementar o contador.
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Text('Decrementar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
