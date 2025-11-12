import 'package:exemplo_rotas/pages/page1.dart';
import 'package:exemplo_rotas/pages/page2.dart';
import 'package:exemplo_rotas/pages/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter rotas simples',
      routes: {
        Page1.routeName : (_) => Page1(),
        Page2.routeName : (_) => Page2(),
        Page3.routeName : (_) => Page3(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Main Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           ElevatedButton(onPressed: () => Navigator.pushNamed(context, Page1.routeName), child: Text("Page 1")),
           ElevatedButton(onPressed: () => Navigator.pushNamed(
               context,
               Page2.routeName,
               arguments: <String, dynamic>{
                 "valor_passado": "Hello World StateLess!"
               }
           ), child: Text("Page 2")),
           ElevatedButton(onPressed: () => Navigator.pushNamed(
               context,
               Page3.routeName,
               arguments: <String, dynamic>{
                 "valor_passado": "Hello World StateFul!"
               }
           ), child: Text("Page 3"))
          ],
        ),
      ),
    );
  }
}
