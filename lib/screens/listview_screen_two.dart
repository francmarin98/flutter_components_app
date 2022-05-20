import 'package:flutter/material.dart';

class ListViewScreenTwo extends StatelessWidget {
  final options = const [
    'Zero',
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
  ];

  const ListViewScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewScreenTwo"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (_, __) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.indigo),
            onTap: () {},
          );
        },
      ),
    );
  }
}
