//2- convert the response into a custom dart object

//--Note--
//factory function : is a function that return an instance of a class
//Dart provides factory keyword to label a default or named constructor. ...
// For example, we can cache an instance of the class and return the same instance when a user is trying to create new object.
class Film {
  String filmName;
  int yearProduction;

  Film({this.filmName, this.yearProduction});

  factory Film.fromJson(Map<String, dynamic> json){
    return Film(
      filmName: json['name'],
      yearProduction: json['year'],
    );
  }

}