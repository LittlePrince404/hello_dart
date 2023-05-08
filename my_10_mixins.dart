import 'my_07_classes.dart';

mixin Piloted{
  int astronauts = 1;

  void describeCrew(){
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);
  // ···
}

void main(){

  var voyager4 = PilotedCraft('Voyager IV', DateTime(1977, 9, 5));
  voyager4.describe();
  voyager4.describeCrew();

}
