import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();
  double result = 0, number1 = 0, number2 = 0;
  tambah() {
    setState(() {
      number1 = double.parse(input1.text);
      number2 = double.parse(input2.text);
      result = number1 + number2;
    });
  }

  kurang() {
    setState(() {
      number1 = double.parse(input1.text);
      number2 = double.parse(input2.text);
      result = number1 - number2;
    });
  }

  bagi() {
    setState(() {
      number1 = double.parse(input1.text);
      number2 = double.parse(input2.text);
      result = number1 / number2;
    });
  }

  kali() {
    setState(() {
      number1 = double.parse(input1.text);
      number2 = double.parse(input2.text);
      result = number1 * number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Aplikasi Kalkulator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Hasilnya: $result ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: input1,
              decoration: InputDecoration(
                labelText: 'Masukan Angka pertama',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: input2,
              decoration: InputDecoration(
                labelText: 'Masukan Angka Kedua',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
                    tambah();
                    input1.clear();
                    input2.clear();
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
                    kurang();
                    input1.clear();
                    input2.clear();
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 50,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    onPressed: () {
                      bagi();
                      input1.clear();
                      input2.clear();
                    },
                    child: const Text(
                      ':',
                      style: TextStyle(color: Colors.black),
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
                    kali();
                    input1.clear();
                    input2.clear();
                  },
                  child: const Text(
                    'X',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
