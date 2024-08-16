import 'package:flutter/material.dart';
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
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
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
            CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {
                  
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
