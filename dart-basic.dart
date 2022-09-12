void main() {
  var msg = 'hello,world';
  print(msg);
  dynamic s = 'Ram';
  s = 10;
  print(s);
  const name = "Greg";
  print(name);
  final a = "Sarah";
  print(a);
  assert(2 + 3 == 5);
  assert(5 / 2 == 2.5); //Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder
  var b, c;
  b = 0;
  c = ++b;
  assert(b == c);
  b = 0;
  c = b++;
  assert(b != c);
  assert(2 == 2);
  assert(2 != 3);
  assert(2 > 3);
  bool isSnowing = true;
  bool isRaining = false;
  assert(!isRaining); //Negation
  assert(isSnowing || isRaining); //Logical OR
  assert(isSnowing && isRaining); // Logical AND
  int d = 5;
  int e = 7;
  var res = d & e; // Bitwise AND
  var ans = d | e; // Bitwise OR
  var x = d ^ e; // Bitwise XOR
  print(res);
  print(ans);
  print(x);
  var g = d << e; // Bitwise left-shift
  print(g);
  var h = d >> e; // Performing Right-shift
  print(h);
  var j = 2, k = 3;
  var i;
  i ??= j + k;
  print(i);
  var companyName = "Microsoft";

  print(companyName);
  var p;
  String q = p ?? "Hi";
  print(q);

  String z = 'GFG';
  double w = 3.3;
  print(z is String);
  print(w is! int);
}
// * Dart supports all the operators you'd expect from a modern programming language.

// ? Assigning a value to a variable in Dart is done by sing the "=" operator.

//* Dart also supports compound operators or shorthand which are equivalent of performing an operation and assignment.

/*
 *Basic building block of information in your Dart program will be variables

 * Anytime you're working with data in apps,you can store that data in variables.
 
 ? Variables store references to these values

 ? Simplest way to define a variable in dart using var keyword

 ! Dart is a typed language,i.e dart can infer the type so you didn't have to explicitly define it as string

! If you did want to create  a varaible that's more dynamic ,you'd use the dynamic keyword


* You can also use const and final keywords to define a variables

* The fact that they never be reassigned,when they have their value that's the value forever.

! Once you assigned a value,it can never change.

* const variable must be compile-time constant

? It can only be set to values that always resolve to the same value

? final  is similar to const,It can't  change once it has been set.

! final also must be set when the variable is create,unlike var

! The only way that you'd define a final variable and not give it a value straight away is on class properties

* Dart supports logical operators similar to most languages.They can be used to combine or invert boolean expressions

* You can manipulate the individual bits of numbers in Dart,you'd use these bitwise shift operators with integers.

! Null-aware operators are one of my favourite features in Dart.

? Null-aware operators in Dart  help resolve the issue of checking null-values of variables

* If this object or value is null,then forgot about it and stop trying to execute this code

! Dart provides 3 null-aware operators are ?.,??,??=

* ?. operator says that it assign null if object is null rather than throwing an error.

*?? operator says that it assign value or variable value as deafult if the object is null,It also has backup value if that value is null

*??= operator basically says if the object is null then assign it to this value,if not just return the object as it's

? Dart is a typed-language,it's often useful to assert that value is of a correct type

?  is  and is! operators are used to type test 

* is operator returns True if the object has the specified type

* is! operator returns False if the object has the specified type

* as is primarily used as type cast operator

* It has different meanings in different contexts


*/

