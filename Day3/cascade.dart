class user {
  String? name;
  int? age;
  int id = 0;
  String? girlFriend;

  //constructor
  user(this.name, this.age);
//Method to display user details
  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print('Name: $name, Age: $age');
  }

  void celebrateBirthday() {
    age++;
    print('Happy Birthday, $name! You are now $age years old.');
  }
}

void main() {
  user xyz = user("xyz", 22)
    ..girlFriend = "Yes"
    ..id = 1;
  print(
      "name: ${xyz.name}, age: ${xyz.age}, id: ${xyz.id}, girlfriend: ${xyz.girlFriend}");

////////
  Person? person;

  // Using null-aware cascade
  person?.displayInfo(); // No output, as person is null

  // Now let's create a person
  person = Person('Alice', 22);

  // Using null-aware cascade
  person
    ?..displayInfo() // Will display info
    ..celebrateBirthday() // Will celebrate birthday
    ..displayInfo(); // Will display updated info

/////
  var sb = StringBuffer();

  // This will cause an error because write() returns void
  // sb.write('foo')
  //   ..write('bar'); // Error: method 'write' isn't defined for 'void'.

  //right
  sb
    ..write("foo")
    ..write("bar");
}
/*Cascades (.., ?..) allow you to make a sequence of operations on the same object. In addition to accessing instance members, you can also call instance methods on that same object. This often saves you the step of creating a temporary variable and allows you to write more fluid code. */
// If the object that the cascade operates on can be null, then use a null-shorting cascade (?..) for the first operation. Starting with ?.. guarantees that none of the cascade operations are attempted on that null object.
// you can't construct a cascade on void.