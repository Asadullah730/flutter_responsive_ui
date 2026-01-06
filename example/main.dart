import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_plus/flutter_responsive_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive UI Example'),
        ),
        body: ResponsiveColumn(
          children: [
            ResponsiveGrid(
              children: List.generate(
                12,
                (i) => Card(child: Center(child: Text('Item ${i + 1}'))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
