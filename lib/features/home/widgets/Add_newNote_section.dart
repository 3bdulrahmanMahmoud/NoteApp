// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/features/home/cubit/notes_cubit.dart';
import 'package:note_app/features/home/widgets/add_note_body.dart';

Positioned AddNewNoteSection(BuildContext context) {
  return Positioned(
      bottom: 20,
      right: 5,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(40)),
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
              backgroundColor: const Color.fromARGB(255, 80, 77, 77),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              context: context,
              builder: (context) {
                return  ModalProgressHUD(
                    inAsyncCall: State is AddNotesLoading ? true : false,
                    child: BlocProvider(
                      create: (context) => NotesCubit(),
                      child: const AddNewNoteBody(),
                    ));
              },
            );
          },
        ),
      ));
}
