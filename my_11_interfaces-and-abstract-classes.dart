//Interfaces and abstract classes, https://dart.dev/language#interfaces-and-abstract-classes

/*
* Dart has no interface keyword. Instead, all classes implicitly define an interface. 
* Therefore, you can implement any class.
*/

import 'my_07_classes.dart';

class MockSpaceship implements Spacecraft{
  
  @override
  late String name;

  @override
  DateTime? launchDate;

  @override
  void describe() {
    print('MockSpaceship has been created.');
  }

  @override
  int? get launchYear => throw UnimplementedError();
  
  MockSpaceship(){
    print('MockSpaceship implement from Spacecraft.');
  }
}

//You can create an abstract class to be extended (or implemented) by a concrete class. 
//Abstract classes can contain abstract methods (with empty bodies).
abstract class Describable{
  void describe();

  void describeWithEmphasis(){
    print('=========');
    describe();
    print('=========');
  }
}
//Any class extending Describable has the describeWithEmphasis() method, 
//which calls the extender’s implementation of describe().

class describeMock extends Describable{

  void describe() {
    print('Descriable.describe has been extended and overrided.');
  }

  // void describeWithEmphasis() {
  //   print('Descriable.describeWithEmphasis has been implemented and overrided.');
  // }

}

void main(){

  var voyager = MockSpaceship();
  voyager.describe();
  var describ = describeMock();
  describ.describe();
  describ.describeWithEmphasis();

}