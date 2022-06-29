import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> myList = [
    {
      "id": 1,
      "name": "Nama 1",
      "age": 17,
      "hobby": ["Bulu tangkis", "Berenang", "Musik", "________", "________", "________"]
    },
    {
      "id": 2,
      "name": "Nama 2",
      "age": 19,
      "hobby": ["Bernyanyi", "Membaca", "Lari", "________", "________", "________"]
    },
    {
      "id": 3,
      "name": "Nama 3",
      "age": 15,
      "hobby": ["Sepak bola", "Futsal", "Basket", "________", "________", "________"]
    },
    {
      "id": 4,
      "name": "Nama 4",
      "age": 15,
      "hobby": ["Bulu tangkis", "Berenang", "Musik", "________", "________", "________"]
    },
    {
      "id": 5,
      "name": "Nama 5",
      "age": 16,
      "hobby": ["Bernyanyi", "Membaca", "Lari", "________", "________", "________"]
    },
    {
      "id": 6,
      "name": "Nama 6",
      "age": 14,
      "hobby": ["Sepak bola", "Futsal", "Basket", "________", "________", "________"]
    },
    {
      "id": 7,
      "name": "Nama 7",
      "age": 16,
      "hobby": ["Sepak bola", "Futsal", "Basket", "________", "________", "________"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ID Apps",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((dt) {
            List myHobby = dt['hobby'];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: Colors.white70,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://picsum.photos/id/${dt['id']}/200/300"),
                        ),

                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama : ${dt['name']}",),
                            Text("Umur  : ${dt['age']} thn")
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myHobby.map((hb) {
                          return Card(
                            color: Colors.white24,
                            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(hb),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}