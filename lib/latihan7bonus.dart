import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 7 Bonus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FavoritesScreen(),
    );
  }
}

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<Map<String, dynamic>> favorites = [
    {'name': 'GoRide', 'image': 'images/goride.png'},
    {'name': 'GoCar', 'image': 'images/gocar.png'},
    {'name': 'GoFood', 'image': 'images/gofood.png'},
    {'name': 'GoSend', 'image': 'images/gosend.png'},
    {'name': 'GoMart', 'image': 'images/gomart.png'},
    {'name': 'GoPulsa', 'image': 'images/gopulsa.png'},
    {'name': 'Check In', 'image': 'images/checkin.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gojek', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Your Favorites',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 24.0,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.green, width: 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
            ],
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final Map<String, dynamic> item = favorites[index];
                return InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          item['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item['name']),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
