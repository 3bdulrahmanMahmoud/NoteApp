import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/features/home/widgets/Custom_button.dart';
import 'package:note_app/features/home/widgets/Cutom_Text_field.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 30, top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                customTextField(hint: "Title"),
                SizedBox(
                  height: 40,
                ),
                customTextField(
                  hint: "content",
                  maxLine: 10,
                ),
              ],
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
