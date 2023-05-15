//Variables, https://dart.dev/language#variables

/*
* Even in type-safe Dart code, you can declare most variables without explicitly specifying their type using var. 
* Thanks to type inference, these variables’ types are determined by their initial values:
*/

void main(){
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  print(image['url']);
}