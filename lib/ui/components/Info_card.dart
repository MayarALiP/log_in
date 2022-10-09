import 'package:flutter/material.dart';
import 'package:log_in/Models/card_info.dart';

class InfoCardComponent extends StatelessWidget {
  CardInfo mycard;
  InfoCardComponent({Key? key, required this.mycard}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (mycard.onCardClick != null) {
          mycard.onCardClick!(mycard);
        }
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              mycard.image,
              width: 75,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              mycard.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              mycard.subtitle,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
