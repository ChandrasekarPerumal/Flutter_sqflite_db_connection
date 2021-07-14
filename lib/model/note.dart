// Create table
final String tableNotes = 'notes';

class NoteFields {
  //Create value list with column that pass the values
  static final List<String> values = [
    //Add all fields
    id, number,
  ];
  //Below fields should be passed in the above list.
  //Verify all the column field are passed.
  static final String id = '_id';
  static final String number =
      'number'; // These fields are representing the fields in the Model object

}

// Model object class
class Note {
  final int id;
  final int number;

  /// Class constructor
  const Note({
    this.id,
    required this.number,
  });

  Note copy({
    int id,
  }) =>
      // This Note object copies current note.
      Note(id: id ?? this.id);

  /// Map the object data by using Json format
  Map<String, Object> toJson() => {
        NoteFields.id: id,
      };
}
