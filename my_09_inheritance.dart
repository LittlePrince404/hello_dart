//Inheritance, https://dart.dev/language#inheritance

/*
* Dart has single inheritance.
*/

import 'my_07_classes.dart';

class Orbiter extends Spacecraft{
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);

  void describe(){
    super.describe();
    print('Altitude: $altitude');
  }
}

void main(){
  var voyager = Orbiter('Voyager I', DateTime(1977, 9, 5), 35000000);
  voyager.describe();
}