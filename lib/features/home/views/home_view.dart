import 'package:flutter/material.dart';
import 'package:note_app/features/home/widgets/App_bar_body.dart';
import 'package:note_app/features/home/widgets/section_body.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const AppBarBody(),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return const bodysection();
                    },
                  ),
                  Positioned(
                      bottom: 20,
                      right: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40)),
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return AddNewNote();
                              },
                            );
                          },
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddNewNote extends StatelessWidget {
  const AddNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
    );
  }
}
