import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {

  final events = [
    {
      "speaker": "Bebe de grand soeur",
      "data": "13h à 13h30",
      "subject": "Le code legacy",
      "avatar": "bebe"
    },
    {
      "speaker": "Damien Cavailles",
      "data": "17h30 à 18h",
      "subject": "git blame --no-offense",
      "avatar": "Capture1"
    },
    {
      "speaker": "Defend Intelligence",
      "data": "18h à 18h30",
      "subject": "A la decouverte de flutter",
      "avatar": "main1"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          final avatar = event['avatar'];
          final speaker = event['speaker'];
          final data = event['data'];
          final subject = event['subject'];
          return Card(
            child: ListTile(
              leading: Image.asset("asset/images/$avatar.jpg"),
              title: Text('$speaker ($data)'),
              subtitle: Text('$subject'),
              trailing: Icon(Icons.more_vert),
            ), // ListTile
          ); // Card
        },
      ), //ListView
    ); //Center
  }
}
