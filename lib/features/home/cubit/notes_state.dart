part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class AddNotesLoading extends NotesState {}

final class AddNotesSuccess extends NotesState {}

final class AddNotesFailure extends NotesState {
  final String errMessage;

  AddNotesFailure({required this.errMessage});
}
