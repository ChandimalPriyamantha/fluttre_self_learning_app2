import 'package:flutter/material.dart';

class ListenScreen extends StatelessWidget {
  const ListenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listen Screen")),
      body: Center(
        child: Text("Welcome to the Second Screen!"),
      ),
    );
  }
}
