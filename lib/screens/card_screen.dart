import 'package:flutter/material.dart';

import 'package:components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: const [
          CardWidgetTypeOne(),
          CardWidgetTypeTwo(
            imageURL:
                "https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-20.jpeg",
          ),
          CardWidgetTypeTwo(
            imageURL:
                "https://static.vecteezy.com/system/resources/thumbnails/000/206/117/small_2x/T_4-01.jpg",
            cardTitle: 'Hello World',
          )
        ],
      ),
    );
  }
}
