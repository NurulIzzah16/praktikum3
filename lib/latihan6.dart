import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 6',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan 6', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: dataList(),
      ),
    );
  }
}

class dataList extends StatelessWidget {
  final Map<String, String> people = {
    'Lee Dohyun': 'Membaca',
    'Nurul': 'Mendaki',
    'Izzah': 'Bersepeda',
  };

  final Map<String, String> images = {
    'Lee Dohyun': 'images/gambar1.png',
    'Nurul': 'images/gambar2.jfif',
    'Izzah': 'images/gambar3.jfif',
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        String key = people.keys.elementAt(index);
        return Card(
          child: ListTile(
            leading: Image.asset(
              images[key]!,
              width: 50,
              height: 50,
            ),
            title: Text(key),
            subtitle: Text(people[key]!),
            trailing: const Icon(Icons.more_vert),
          ),
        );
      },
    );
  }
}
