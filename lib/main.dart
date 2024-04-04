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
  TextEditingController textfield1 = TextEditingController();
  TextEditingController textfield2 = TextEditingController();
  double hasil = 0, angka1 = 0, angka2 = 0;
  add() {
    setState(() {
      angka1 = double.parse(textfield1.text);
      angka2 = double.parse(textfield2.text);
      hasil = angka1 + angka2;
    });
  }

  minus() {
    setState(() {
      angka1 = double.parse(textfield1.text);
      angka2 = double.parse(textfield2.text);
      hasil = angka1 - angka2;
    });
  }

  bag() {
    setState(() {
      angka1 = double.parse(textfield1.text);
      angka2 = double.parse(textfield2.text);
      hasil = angka1 / angka2;
    });
  }

  kali() {
    setState(() {
      angka1 = double.parse(textfield1.text);
      angka2 = double.parse(textfield2.text);
      hasil = angka1 * angka2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Calculator Apps'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Result: $hasil ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: textfield1,
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
              controller: textfield2,
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
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
                    add();
                    textfield1.clear();
                    textfield2.clear();
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
                    minus();
                    textfield1.clear();
                    textfield2.clear();
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
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    onPressed: () {
                      bag();
                      textfield1.clear();
                      textfield2.clear();
                    },
                    child: const Text(
                      ':',
                      style: TextStyle(color: Colors.black),
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
                    kali();
                    textfield1.clear();
                    textfield2.clear();
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
