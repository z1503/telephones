import 'package:flutter/material.dart';
import 'package:telephones/components.dart';


final List<String> nums = [
  '1','2','1','2','1','2',
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: const Text('Information'),
      ),

        body: Center(
      child: ListView.builder(
        itemCount: nums.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItems(nums: nums[index]);
        },
      ),
    ));
  }
}