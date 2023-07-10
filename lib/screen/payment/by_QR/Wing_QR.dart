import 'package:flutter/material.dart';
import 'package:onclickonedollar/afa/components/contants.dart';

class Wing_QR_code extends StatefulWidget {
  const Wing_QR_code({super.key, required this.price});
  final String price;
  @override
  State<Wing_QR_code> createState() => _Wing_QR_codeState();
}

class _Wing_QR_codeState extends State<Wing_QR_code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.chevron_left_outlined)),
                Text("Pay")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
