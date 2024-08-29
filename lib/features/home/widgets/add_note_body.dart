import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/models/note_model.dart';
import 'package:note_app/features/home/cubit/Add_notes_cubit.dart';
import 'package:note_app/features/home/widgets/Custom_button.dart';
import 'package:note_app/features/home/widgets/Cutom_Text_field.dart';

class AddNewNoteBody extends StatefulWidget {
  const AddNewNoteBody({super.key});

  @override
  State<AddNewNoteBody> createState() => _AddNewNoteBodyState();
}

class _AddNewNoteBodyState extends State<AddNewNoteBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNotesCubit, NotesState>(
      listener: (context, state) {
        if (state is AddNotesSuccess) {
          Navigator.pop(context);
        }
        if (state is AddNotesFailure) {
          print("failer ${state.errMessage}");
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing:state is AddNotesLoading?true:false,
          child: Container(
            padding:  EdgeInsets.only(top: 20, left: 10, right: 10,bottom: MediaQuery.of(context).viewInsets.bottom),
            width: double.infinity,
            child: Form(
              autovalidateMode: autovalidateMode,
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customTextField(
                    onsaved: (p0) {
                      title = p0;
                    },
                    hint: 'Title',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  customTextField(
                    onsaved: (p0) {
                      subTitle = p0;
                    },
                    hint: 'Content',
                    maxLine: 5,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  state is AddNotesLoading
                      ? const CircularProgressIndicator()
                      : CustomButton(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              var notemodel = NoteModel(
                                  color: Colors.blue.value,
                                  title: title!,
                                  subTitle: subTitle!,
                                  data: DateTime.now.toString());
                              BlocProvider.of<AddNotesCubit>(context)
                                  .addNote(notemodel);
                            } else {
                              autovalidateMode = AutovalidateMode.always;
                            }
                            setState(() {});
                          },
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
