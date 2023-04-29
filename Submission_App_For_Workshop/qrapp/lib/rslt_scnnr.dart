import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResultScreen extends StatelessWidget {
  final String code;
  final Function() closeScreen;
  const ResultScreen(
      {super.key, required this.closeScreen, required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          closeScreen();
          Navigator.pop(context);
        }),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black87,
        ),
      ),
      centerTitle: true,
      title: const Text(
        "Place QR code in the area",
        style: TextStyle(
          color: Colors.black87,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            QrImage(
              data: '',
              size: 150,
              version: QrVersions.auto,
            ),
            const Text(
              "Scanned Result",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              code,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo[700]),
                onPressed: () {},
                child: const Text(
                  "Copy",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
