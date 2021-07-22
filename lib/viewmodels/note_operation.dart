import 'package:app_notes/models/note.dart';
import 'package:flutter/cupertino.dart';

class NotesOperation with ChangeNotifier {
  List<Note> _notes = [];

  List<Note> get notes {
    return _notes;
  }

  void addNewNote(String title, String description) {
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }

  NotesOperation() {
    addNewNote('First Note', 'first description');
  }
}
