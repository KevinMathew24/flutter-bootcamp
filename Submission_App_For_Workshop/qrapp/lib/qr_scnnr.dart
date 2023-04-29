import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrapp/rslt_scnnr.dart';

const bgcolor = Color(0xfffafafa);

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  bool isScanCompleted = false;

  void closeScreen() {
    isScanCompleted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
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
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Place QR code in the area",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Scanning will be started automatically",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: MobileScanner(
                allowDuplicates: true,
                onDetect: (barcode) {
                  if (!isScanCompleted) {
                    String code = barcode.rawValue ?? '---';
                    isScanCompleted = true;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResultScreen(
                                closeScreen: closeScreen, code: code)));
                  }
                },
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "Developed by Kevin & Justin",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
