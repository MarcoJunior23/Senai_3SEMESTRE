import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContadorPage(),
    );
  }
}

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  void _resetar() {
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Valor do contador:',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              '$_contador',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementar,
                  child: const Text('+1'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _decrementar,
                  child: const Text('-1'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _resetar,
                  child: const Text('Resetar'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
