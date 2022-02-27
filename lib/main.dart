import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Temperature Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Konverter Suhu'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan Suhu Dalam Celcius',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  print(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
