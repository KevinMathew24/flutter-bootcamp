import 'package:flutter/material.dart';
import 'package:qrapp/qr_scnnr.dart';

void main() {
  runApp(const Qrsapp());
}

class Qrsapp extends StatelessWidget {
  const Qrsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      )),
      home: const QrScanner(),
      debugShowCheckedModeBanner: false,
      title: 'QR Scanner',
    );
  }
}
