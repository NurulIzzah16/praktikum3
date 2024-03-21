import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 9',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Covid-19\n Vaccine',
      'imageUrl': 'images/covidvaksin.PNG',
    },
    {
      'name': 'Covid-19\n Test Result',
      'imageUrl': 'images/covidtes.PNG',
    },
    {'name': 'EHAC', 'imageUrl': 'images/ehac.PNG'},
    {
      'name': 'Travel\n Regulations',
      'imageUrl': 'images/travel.PNG',
    },
    {'name': 'Telemedicine', 'imageUrl': 'images/telemedicine.PNG'},
    {
      'name': 'Healthcare\n Facility',
      'imageUrl': 'images/hospital.PNG',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peduli Lindungi'),
        backgroundColor: Colors.blue[200],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.blue[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Entering a public space?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'Stay alert to stay safe',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'images/peganghp.png',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: DropdownButton<String>(
                  value: 'Check In Preference',
                  onChanged: (String? newValue) {
                    // Tambahkan logika ketika nilai dropdown berubah
                  },
                  items: <String>['Check In Preference']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  underline: Container(),
                ),
              ),
              SizedBox(
                width: 80,
                child: TextButton(
                  onPressed: () {
                    // Tambahkan logika ketika tombol "Scan" ditekan
                  },
                  child: const Text('Scan'),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 3,
              children: List.generate(items.length, (index) {
                return InkWell(
                  onTap: () {
                    // Tambahkan logika ketika card diklik
                  },
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.zero,
                          child: Image.asset(
                            items[index]['imageUrl'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              items[index]['name'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
