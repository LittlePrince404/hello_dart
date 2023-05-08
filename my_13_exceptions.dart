import 'dart:io';
import 'my_10_mixins.dart';

Future<void> describeFlybyObjects(List<String> flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}

void main()
{
  var voyager = PilotedCraft('Voyager IV', DateTime(1977, 9, 5));
  if (voyager.astronauts == 0) {
    throw StateError('No astronauts.');
  }
}