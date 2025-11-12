import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  static final routeName = "/page1";

  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 1"),
      ),
      body: const Center(child: Text("Content"),),
    );
  }
}
