import 'package:flutter/material.dart';

class CardWidgetTypeTwo extends StatelessWidget {
  final String imageURL;
  final String? cardTitle;

  const CardWidgetTypeTwo({Key? key, required this.imageURL, this.cardTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageURL),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 1000),
          ),
          Container(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
            child: Text(cardTitle ?? 'Un hermoso paisaje'),
          )
        ],
      ),
    );
  }
}
