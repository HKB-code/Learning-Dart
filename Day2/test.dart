/*Every app requires the top-level main() function, where execution starts. Functions that don't explicitly return a value have the void return type. To display text on the console, you can use the top-level print() function: */
late String description;
late String temp = readThermometer();

String readThermometer() {
  //simulating an expensive operation
  print("Reading temperature...");
  return "25°C";
}

void main() {
  var name = "Harshil";

  // //Throw valueError
  // name = 1;

// If an object isn't restricted to a single type, specify the Object type (or dynamic if necessary).
//Object:
/*What it means: name can hold any type of object, including strings, integers, lists, etc.
Limitations: If you want to use name as a String, you'll need to cast it: */
  Object y = 1;
  y = "hi";

// If you want more flexibility without needing to cast, you can use dynamic:
/*What it means: name can be changed to any type later in the code.
Advantages: You can directly assign different types to name without casting:
Using dynamic bypasses compile-time type checking, which can lead to runtime errors if you try to call methods or properties that don’t exist on the actual object type. */
  dynamic x = 1;
  x = "hi";
  print(x.toUpperCase());

  /*Summary
Use var when you want type inference (Dart figures out the type for you).
Use Object when you want to store any object type but want to enforce type safety (you’ll need to cast it when using specific methods).
Use dynamic when you need maximum flexibility but at the cost of type safety. */

///////////
/*Default value
#
Uninitialized variables that have a nullable type have an initial value of null. Even variables with numeric types are initially null, because numbers—like everything else in Dart—are objects. */
  // int? lineCount;
  /*The assert() function in Dart is used for debugging purposes. It checks a boolean condition, and if the condition evaluates to false, it throws an AssertionError. This can help catch bugs by ensuring that certain assumptions in your code hold true during development. */
  // assert(lineCount == null);
  //Production code ignores the assert() call. During development, on the other hand, assert(condition) throws an exception if condition is false.

///////////////////
/*In Dart, the late modifier is a powerful feature that allows you to declare non-nullable variables that can be initialized later. It has two main use cases:

Deferring Initialization: You can declare a non-nullable variable that you will initialize later, ensuring that it is not null by the time you use it.
Lazy Initialization: You can delay the initialization of a variable until it's actually needed, which can improve performance, especially if the initialization process is costly */

  //case1:Declaring a Non-Nullable Variable
  description = 'Feijoada!'; // Initialize before use
  print(description); // Outputs: Feijoada!

//case2:Lazy Initialization
  var shouldCheckTemperature = true;
// If we don't use temperature, readThermometer() won't be called.
  if (shouldCheckTemperature) {
    // If we don't use temp, readThermometer() won't be called.
    print(temp); // Only calls readThermometer() when needed
  }

/*Summary
Using the late modifier is a way to manage non-nullable variables in Dart safely and efficiently. It allows you to:

Declare non-nullable variables that can be initialized later.
Optimize performance by lazily initializing expensive computations only when necessary.
This feature enhances Dart's null safety by providing flexibility while ensuring that non-nullable variables are properly initialized before use. */

// ///////
//In Dart, final and const are both used to define variables that cannot be changed, but they serve different purposes and have distinct characteristics.

/*final
Definition: A final variable can be set only once. Once assigned, its value cannot be changed.
Initialization: The value of a final variable can be determined at runtime. This means you can assign it a value based on a computation or a function call. */

  final names = 'Bob'; // Without type annotation
  final String nickname = 'Bobby'; // With type annotation

// The following line would cause an error:
  name = 'Alice'; // Error: a final variable can only be set once.

/*const
Definition: A const variable is a compile-time constant. This means its value must be known at compile time, and it cannot be changed.
Initialization: A const variable can only be initialized with a constant value, such as a number, string literal, or another const value. */

  const bar = 1000000; // A constant value
  const double atm = 1.01325 * bar; // This uses a compile-time constant

// The following line would cause an error:
  const baz = []; // Creates an empty constant list
  // baz = [42]; // Error: Constant variables can't be assigned a value.

/*Key Differences
Mutability:
final variables are immutable once set, but they can be initialized at runtime.
const variables are compile-time constants and are immutable, including their contents.

Usage:
Use final when you want to ensure a variable is assigned once but may be determined at runtime.
Use const when you want to define a value that is fixed and known at compile time.

Instance Variables:
You can have final instance variables, but you cannot have const instance variables. */

////
// Example of final Assigned at Runtime
  final int currentHour = DateTime.now().hour; // Assigned at runtime
  print('Current Hour: $currentHour');

  // The following line would cause an error:
  // currentHour = 5; // Error: A final variable can only be set once.
}
