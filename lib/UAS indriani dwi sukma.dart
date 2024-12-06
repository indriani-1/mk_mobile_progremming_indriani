import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

// Suggested code may be subject to a license. Learn more: ~LicenseLog:1764586347.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1439864497.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2405695157.

class MyHome extends StatelessWidget {
  const MyHome({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController conbil1 = TextEditingController();
  TextEditingController conbil2 = TextEditingController();
  TextEditingController conbilhasil = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 147, 250),
        title: const Center(
          child: Text('Kalkulator Sederhana Indriani',
          style: TextStyle(color: Color.fromARGB(255, 12, 8, 8)),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 04, right: 4, top: 10),
        child: Wrap(
          runSpacing: 10,
          children: [
            TextField(
              controller: conbil1,
              decoration: const InputDecoration(
                label: Text('Masukan Nilai A'),
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: conbil2,
              decoration: const InputDecoration(
                label: Text('Masukan Nilai B'),
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: conbilhasil,
              decoration: const InputDecoration(
                label: Text('Hasil'),
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 85,  
                  child: ElevatedButton(
                    onPressed: () {
                      operasimatematika('+');
                    },
                    child: const Text('+'),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      operasimatematika('-');
                    },
                    child: const Text('-'),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      operasimatematika('*');
                    },
                    child: const Text('x'),
                  ),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed: () {
                      operasimatematika('/');
                    },
                    child: const Text(':'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void operasimatematika(String operasi) {
    double bil1 = double.parse(conbil1.text);
    double bil2 = double.parse(conbil2.text);
    double hasil = 0;
    if (operasi == '+') {
      hasil = bil1 + bil2;
    } else if (operasi == '-') {
      hasil = bil1 - bil2;
    } else if (operasi == '*') {
      hasil = bil1 * bil2;
    } else if (operasi == '/') {
      hasil = bil1 / bil2;
    }
    conbilhasil.text = hasil.toString();
  }
}
