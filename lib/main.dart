import 'package:flutter/material.dart';

import 'listen_screen.dart';
import 'buy_tickets_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello world flutter application',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: const MyHomePage(title: 'Events Board'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(this.title),
      ),
      body: EventLists(),


    );
  }
}

class EventLists extends StatelessWidget {
  const EventLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures Column takes only required space
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Card(child: _CardExample(cardTitle: 'The Enchanted Nightingale', cardDescription: 'Music by Julie Gable. Lyrics by Sidney Stein.')),
            const Card(child: _CardExample(cardTitle: 'Believe in Yourself', cardDescription: 'Success starts with self-confidence.')),
            const Card(child: _CardExample(cardTitle: 'Code Like a Pro', cardDescription: 'Clean code is like well-written prose.')),
            const Card(child: _CardExample(cardTitle: 'The Dark Knight', cardDescription: 'Why so serious? - The Joker.')),
            const Card(child: _CardExample(cardTitle: 'Bohemian Rhapsody', cardDescription: 'Is this the real life? Is this just fantasy?')),
            const Card(child: _CardExample(cardTitle: 'Journey to the Stars', cardDescription: 'The cosmos is within us. - Carl Sagan.')),
            const Card(child: _CardExample(cardTitle: 'Stay Focused', cardDescription: 'Success is the sum of small efforts, repeated daily.')),
            const Card(child: _CardExample(cardTitle: 'Game Over?', cardDescription: 'No, it’s just the beginning of a new adventure.')),

      ],
        ),
      ),
    );
  }
}

class _CardExample extends StatelessWidget {
  const _CardExample({ required this.cardTitle, required this.cardDescription});

  final String cardTitle;
  final String cardDescription;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: Icon(Icons.album),
                title: Text(cardTitle),
                subtitle: Text(cardDescription),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BuyTicketScreen(cardDescription, description: cardDescription,)),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('LISTEN'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListenScreen()),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),


    );
  }
}