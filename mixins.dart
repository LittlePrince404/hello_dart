class Spacecraft{
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntatic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate){
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one. 
  Spacecraft.unlaunched(String name) : this(name, null);

  //Method.
  void describe(){
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null){
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft{
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}


mixin Piloted{
  int astronauts = 1;

  void describeCrew(){
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  // ...
}


void main(){
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

}