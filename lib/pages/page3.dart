import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  static final routeName = "/page3";
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  late String valor = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final valorPassado = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      valor = valorPassado?["valor_passado"] ?? "";
      setState(() {});
    },);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 3"),
      ),
      body: Center(child: Text("Content -> ${valor}"),),
    );
  }
}