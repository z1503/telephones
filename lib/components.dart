import 'package:flutter/material.dart';
import 'package:telephones/pageInformation.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key, required this.nums}) : super(key: key);

  final String nums;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const InfoPage()),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://e7.pngegg.com/pngimages/164/6/png-clipart-xiaomi-redmi-note-4x-android-smartphone-android-gadget-mobile-phone.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10), // Добавим немного пространства между изображением и текстом
            const Text(
              'dfdhgfjdfhgjfh',
              textDirection: TextDirection.ltr,
            ),
          ],
        ),
      ),
    );
  }
}
