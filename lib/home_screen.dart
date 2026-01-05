import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/src/widgets/responsive_column.dart';
import 'package:flutter_responsive_ui/src/widgets/responsive_grid.dart';
import 'package:flutter_responsive_ui/src/widgets/responsive_padding.dart';
import 'package:flutter_responsive_ui/src/widgets/responsive_row.dart';
import 'flutter_responsive_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ResponsiveGrid Example')),
      body: ResponsiveRow(
        // scrollable: true,
        children: [
          Container(color: Colors.blueGrey, height: 100, width: 200),
          Divider(),

          Container(color: Colors.blue, height: 100, width: 200),
          Divider(),
          Container(color: Colors.red, height: 100, width: 200),
          Divider(),
          Container(color: Colors.green, height: 100, width: 200),
          Divider(),
          Container(color: Colors.yellow, height: 100, width: 200),
          Divider(),
          Container(color: Colors.blueGrey, height: 100, width: 200),
          Divider(),
          Container(color: Colors.grey, height: 100, width: 200),
          Divider(),
          Container(color: Colors.red, height: 100, width: 200),
          Divider(),
          Container(color: Colors.purple, height: 100, width: 200),
          Divider(),
        ],
      ),
    );
  }
}
