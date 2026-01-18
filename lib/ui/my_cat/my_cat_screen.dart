import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCatScreen extends ConsumerStatefulWidget {
  const MyCatScreen({super.key});

  @override
  ConsumerState<MyCatScreen> createState() => _MyCatScreenState();
}

class _MyCatScreenState extends ConsumerState<MyCatScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.pets, size: 80, color: Colors.grey),
            SizedBox(height: 16),
            Text('まい猫画面', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
