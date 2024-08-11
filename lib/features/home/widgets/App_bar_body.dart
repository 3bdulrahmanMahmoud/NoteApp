
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBarBody extends StatelessWidget {
  const AppBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Notes",
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 43, 40, 40),
                  borderRadius: BorderRadius.circular(10)),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)))
        ],
      ),
    );
  }
}
