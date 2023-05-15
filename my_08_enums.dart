//Enums, https://dart.dev/language#enums

/*
* Enums are a way of enumerating a predefined set of values or instances in a way 
* which ensures that there cannot be any other instances of that type.
*/

//Here is an example of a simple enum that defines a simple list of predefined planet types:
enum PlanetType{terrestrial, gas, ice }

//Here is an example of an enhanced enum declaration of a class describing planets, 
//with a defined set of constant instances, namely the planets of our own solar system.

/// Enum that enumerates the different planets in our solar system
/// and some of their properties.
enum Planet {

  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestrial, moons: 1, hasRings: false),
  // ···
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  /// A constant generating constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  /// All instance variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhanced enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

void main(){
  //You might use the Planet enum like this:
  final yourPlanet = Planet.earth;

  if (!yourPlanet.isGiant){
    print('Your planet is not a "giant planet".');
  }

}