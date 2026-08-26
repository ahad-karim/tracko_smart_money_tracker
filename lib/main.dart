import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // ProviderScope stores the state of all providers
    const ProviderScope(
      child: MoneyTrackerApp(),
    ),
  );
}

class MoneyTrackerApp extends StatelessWidget {
  const MoneyTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home:const Text("Hello"),
    );
  }
}