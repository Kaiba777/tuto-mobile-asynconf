import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ), //AppBar
      body: Center(
        child: Text("Prochainement disponible"),
      ),//Center
    ); //Scaffold
  }
}