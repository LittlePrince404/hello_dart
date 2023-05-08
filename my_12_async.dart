import 'dart:io';
import 'my_07_classes.dart';

const oneSecond = Duration(seconds: 1);
// ···
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

// Future<void> printWithDelay(String message) {
//   return Future.delayed(oneSecond).then((_) {
//     print(message);
//   });
// }

Future<void> createDescriptions(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print(
            'File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} flies by $object';
  }
}

void main(){
  printWithDelay("Delay 1 second.");
  createDescriptions(['createDescriptions_I_test', 'createDescriptions_II_test']);
  report(Spacecraft('Voyager I', DateTime(1977, 9, 5)), ['Jupiter', 'Saturn']);
}