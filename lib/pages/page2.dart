import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  static final routeName = "/page2";
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final valorPassado = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 2"),
      ),
      body: Center(child: Text("Content -> ${valorPassado?["valor_passado"] ?? 0}")),
    );
  }
}