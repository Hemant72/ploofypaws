import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  SelectionScreen({super.key});

  void _storeSelection(String selection) {
    _firestore.collection('choices').doc('selected').set({'choice': selection});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select an Option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _storeSelection('Option 1'),
              child: const Text('A'),
            ),
            ElevatedButton(
              onPressed: () => _storeSelection('Option 2'),
              child: const Text('B'),
            ),
            ElevatedButton(
              onPressed: () => _storeSelection('Option 3'),
              child: const Text('C'),
            ),
            ElevatedButton(
              onPressed: () => _storeSelection('Option 4'),
              child: const Text('D'),
            ),
          ],
        ),
      ),
    );
  }
}
