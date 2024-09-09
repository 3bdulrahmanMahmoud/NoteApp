import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/models/note_model.dart';
import 'package:note_app/core/utlis/App_strings.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  List<NoteModel>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(AppStrings.knotesBox);
    notes = notesBox.values.toList();
    emit(NoteSuccess());
  }
}
