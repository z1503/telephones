import 'package:flutter/material.dart';
import 'package:telephones/components.dart';


final List<String> nums = [
  '1','2','3','4','5','6','7','8','9','10','11','12','13','14','15'
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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