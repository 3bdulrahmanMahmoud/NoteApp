import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class bodysection extends StatelessWidget {
  const bodysection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amber),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Flutter tips",
                  style: TextStyle(fontSize: 38, color: Colors.black)),
              SizedBox(
                height: 30,
              ),
              Text("Build your career with",
                  style: TextStyle(fontSize: 16, color: Colors.black38)),
              Text("Abdulrahman",
                  style: TextStyle(fontSize: 18, color: Colors.black38)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 5),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                    )),
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                "15/5/2002",
                style: TextStyle(color: Colors.black38),
              ),
            ],
          )
        ],
      ),
    );
  }
}