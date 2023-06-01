import 'package:example/astc_wrapper.dart';
import 'package:flutter/material.dart';

class AstcPage extends StatefulWidget {
  const AstcPage({super.key});

  @override
  State<AstcPage> createState() => _AstcPageState();
}

class _AstcPageState extends State<AstcPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('call c++ api'),
              onPressed: () {
                compressApi();
              },
            ),
          ],
        ),
      ),
    );
  }
}
