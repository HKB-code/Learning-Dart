//Type checking and casting
//1. is operator: check if an object is of a certain type.
void main() {
  var value = "Hello Dart!";
  if (value is String) {
    print('The Value is a String');
  }
//2. is! operator: check if an object is not  of a certain type.
  var value2 = 42;
  if (value2 is! String) {
    print("The value is not a String");
  }
//3. as = used for type casting, it allow you to treat an object as a specifies type. If the object is not of the specified typ, a typeError will be thrown at runtime.
/*The as operator in Dart is used for type casting. It allows you to tell the Dart compiler, "I know that this object is of a certain type, so treat it as that type." */
  var x = "123";
  var number = int.parse(x); //string to int
//lets cast
  var castedValue = number as int;
  print('casted value: $castedValue');

//null-assignment-operator:It assigns a value to a variable only if that variable is currently null. If the variable is not null, it retains its original value.
  int? a;
  int? b;

  // Using ??= operator
  b ??= 10; // b is null, so it gets assigned 10
  print(b); // Outputs: 10

  b ??= 20; // b is now 10, so it does not change
  print(b); // Outputs: 10

  a ??= 5; // a is null, so it gets assigned 5
  print(a); // Outputs: 5

//conditional expression
//1.condition ? expr1 : expr2
  var isPublic = true;
  var visibility = isPublic ? 'public' : 'private';
  print(visibility);
  //2.expr1 ?? expr2
  String? name;
  String playerName(String? name) => name ?? 'Guest';
  print(playerName(name));
}
