part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteLoading extends NoteState {}

final class NoteSuccess extends NoteState {
  final List<NoteModel> note;

  NoteSuccess({required this.note});
}

final class NoteFailure extends NoteState {
  final String errormsg;

  NoteFailure({required this.errormsg});
}
