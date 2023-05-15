//Mixins, https://dart.dev/language#mixins

/*
* Mixins are a way of reusing code in multiple class hierarchies. 
*/

import 'my_07_classes.dart';

mixin Piloted{
  int astronauts = 1;

  void describeCrew(){
    print('Number of astronauts: $astronauts');
  }
}

//To add a mixin’s capabilities to a class, just extend the class with the mixin.
class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);
  // ···
}
//PilotedCraft now has the astronauts field as well as the describeCrew() method.

void main(){

  var voyager4 = PilotedCraft('Voyager IV', DateTime(1977, 9, 5));
  voyager4.describe();
  voyager4.describeCrew();

}
