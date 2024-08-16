import 'package:flutter/material.dart';
import 'package:note_app/features/home/widgets/Add_newNote_section.dart';
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
                  AddNewNoteSection(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
