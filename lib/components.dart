import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key, required this.nums});

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
        child:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.info,
              size: 50,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              'Tap for info',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information'),
      ),
      body: const Center(
        child: Text('This is the information page.'),
      ),
    );
  }
}