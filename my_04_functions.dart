//Functions, https://dart.dev/language#functions

//We recommend specifying the types of each function’s arguments and return value:
int fibonacci(int n){
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main(){

  var result = fibonacci(20);
  print(result);

  //A shorthand => (arrow) syntax is handy for functions that contain a single statement. 
  //This syntax is especially useful when passing anonymous functions as arguments:
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
  //Besides showing an anonymous function (the argument to where()), 
  //this code shows that you can use a function as an argument: the top-level print() function is an argument to forEach().

}