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

enum PlanetType{ terrestrial, gas, ice }

enum Planet{
    /// All instance variables are final
    final PlanetType planetType;
    final int moons;
    final bool hasRing;
    
    mercury(planetType: PlanetType.terrestrial, moons: 0, hasRing: false),
    venus(planetType: PlanetType.terrestrial, moons: 0, hasRing: false),
    earth(planetType: PlanetType.terrestrial, moons: 1, hasRing: false),
    //...
    uranus(planetType: PlanetType.ice, moons: 27, hasRing: true),
    neptune(planetType: PlanetType.ice, moons: 14, hasRing: true),

    /// A constant generating constructor
    const Planet(
      {required this.planetType, required this.moons, required this.hasRing}
    )



    /// Enhanced enums supports getters and other methods
    bool get isGiant =>
      planetType == PlanetType.gas || planetType == planetType.ice;
  }

class Orbiter extends Spacecraft{
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

/*
mixin Piloted{
  int astronauts = 1;

  void describeCrew(){
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  // ...
}
*/

void main(){
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  final yourPlanet = Planet.earth;

  if (!yourPlanet.isGiant){
    print('Your planet is not a "giant planet".');
  }

}