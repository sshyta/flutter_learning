import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(title: "MyApp", home: SafeArea(child: MyScaffold())),
  );
}

class MyAppBar extends StatelessWidget {

  final Widget title;

  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 131, 131)),
      child: Row(
        children: [
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
          ),

          Expanded(child: title),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'My fucking app',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
          ),
          const Expanded(child: Center(child: Text("Hello World"))),
        ],
      ),
    );
  }
}
