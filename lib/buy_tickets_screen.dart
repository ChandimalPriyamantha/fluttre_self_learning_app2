import 'package:flutter/material.dart';

class BuyTicketScreen extends StatelessWidget {
  const BuyTicketScreen(cardDescription, {super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ticket Screen")),
      body: Center(
        child: Text(description),
      ),
    );
  }
}