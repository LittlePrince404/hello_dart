//Classes, https://dart.dev/language#classes

/*
* Here’s an example of a class with three properties, two constructors, 
* and a method. One of the properties can’t be set directly, so it’s defined using a getter method (instead of a variable). 
* The method uses string interpolation to print variables’ string equivalents inside of string literals.
*/

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

void main(){
  //You might use the Spacecraft class like this:
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

}