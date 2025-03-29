
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Card(
                   color: Colors.lightBlueAccent[100],
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(Icons.computer,
                  size: 43,
                color: Colors.blue,
                  ),
                ),
              ),
              Text('Computer'),
                ],
              );
  }
}