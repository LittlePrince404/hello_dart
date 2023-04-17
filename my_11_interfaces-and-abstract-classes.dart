import 'my_07_classes.dart';

class MockSpaceship implements Spacecraft{
  // ...
}

abstract class Describable{
  void describe();

  void describeWithEmphasis(){
    print('=========');
    describe();
    print('=========');
  }
}