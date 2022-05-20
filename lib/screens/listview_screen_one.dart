import 'package:flutter/material.dart';

class ListViewScreenOne extends StatelessWidget {
  final options = const ['One', 'Two', 'Three', 'Four', 'Five', 'Six'];

  const ListViewScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewScreenOne"),
      ),
      body: ListView(
        children: [
          ...options
              .map((numero) => ListTile(
                    title: Text(numero),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList()
        ],
      ),
    );
  }
}
