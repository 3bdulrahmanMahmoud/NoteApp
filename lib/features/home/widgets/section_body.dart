import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/core/models/note_model.dart';
import 'package:note_app/features/home/cubit/note_cubit.dart';

class bodysection extends StatelessWidget {
  const bodysection({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/EditView');
      },
      child: Container(
        padding:
            const EdgeInsets.only(bottom: 20, top: 20, left: 10, right: 20),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(note.color)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(note.title,
                    style: const TextStyle(fontSize: 38, color: Colors.black)),
                const SizedBox(
                  height: 30,
                ),
                Text(note.subTitle,
                    style:
                        const TextStyle(fontSize: 16, color: Colors.black38)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 5),
                  child: IconButton(
                      onPressed: () {
                        note.delete();
                        BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                      },
                      icon: const Icon(
                        FontAwesomeIcons.trash,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  note.data,
                  style: const TextStyle(color: Colors.black38),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
