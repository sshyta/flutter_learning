import 'package:flutter/material.dart';

void main () {
  runApp( const MaterialApp( title: 'Material app desing', home: MyHome()));
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
        ),
        title: Text('My app bar'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search'
          )
        ],
      ),
      body: const Center(child: Text('Hello flutter')),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}