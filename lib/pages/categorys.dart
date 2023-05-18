import 'package:flutter/material.dart';

class Categorys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 6,
        childAspectRatio: 1.13,
        children: List.generate(18, (index) {
          return Container(
            child: Card(
              color: Colors.grey,
            ),
          );
        }),
      ),
    );
  }
}
