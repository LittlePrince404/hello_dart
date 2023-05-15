//Exceptions, https://dart.dev/language#exceptions

import 'dart:io';
import 'my_10_mixins.dart';

//To catch an exception, use a try statement with on or catch (or both):
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
//Note that the code above is asynchronous; try works for both synchronous code and code in an async function.

void main()
{
  //To raise an exception, use throw:
  var voyager = PilotedCraft('Voyager IV', DateTime(1977, 9, 5));
  if (voyager.astronauts == 0) {
    throw StateError('No astronauts.');
  }
}