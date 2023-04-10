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

void main(){

  final yourPlanet = Planet.earth;

  if (!yourPlanet.isGiant){
    print('Your planet is not a "giant planet".');
  }

}