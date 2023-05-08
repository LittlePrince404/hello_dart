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

abstract class Describable{
  void describe();

  void describeWithEmphasis(){
    print('=========');
    describe();
    print('=========');
  }

}

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