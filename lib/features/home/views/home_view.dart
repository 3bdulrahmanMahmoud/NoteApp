import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/models/note_model.dart';
import 'package:note_app/features/home/cubit/note_cubit.dart';
import 'package:note_app/features/home/widgets/Add_newNote_section.dart';
import 'package:note_app/features/home/widgets/App_bar_body.dart';
import 'package:note_app/features/home/widgets/section_body.dart';

class homeView extends StatelessWidget {
  homeView({super.key});
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
                  const displayNotesSection(),
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

class displayNotesSection extends StatelessWidget {
  const displayNotesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes ?? [];

        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return bodysection(
              note: notes[index],
            );
          },
        );
      },
    );
  }
}
