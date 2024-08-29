import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/models/note_model.dart';
import 'package:note_app/core/utlis/App_strings.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(AppStrings.knotesBox);
      var note = notesBox.values.toList();
      emit(NoteSuccess(note: note));
    } catch (e) {
      emit(NoteFailure(errormsg: e.toString()));
    }
  }
}
