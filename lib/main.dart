import 'package:asynconf/pages/add_event_page.dart';
import 'package:asynconf/pages/event_page.dart';
import 'package:asynconf/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: [
          Text("Acceuil"),
          Text("Liste des conférences"),
          Text("Formulaire")
        ][_currentIndex]
        ),
        body: [
          HomePage(),
          EventPage(),
          AddEventPage()
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Acceuil'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'Planing'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Ajout'
            ),
          ],
        ),
      ),
    );
  }
}



