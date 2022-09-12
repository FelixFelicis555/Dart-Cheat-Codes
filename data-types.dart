/*
* Dart functions allow positional parameters ,named parameters and optional positional and named parameters or combination of all of them

! Positional parameters are basic parameters and they're required.

* Dart supports named parameters. Named means that when you call a function,you attach the argument to a label.

! Named parameters are written a bit differently,When defining the function,wrap any named parameters in {},This defines function with named parameters

! Named parameters,by default are optional

* Finally,you can pass positional parameters that are optional ,using []

* You can define default values for parameters with "=" operator in the function signature. 

? Default parameter values tell the function to use the defined default only if nothing is passed in.

! Default parameters values only work with optional parameters.

* Cascade notation that allows you to make sequence of operations  on the same object

? Use "double dot" to call functions on objects and access properties.

*/

/*
 * Rather than using var to define variables,you can use variables type
 
 ? Using types when defining variables prevents you from assigning values to variables that aren't compatible.

? Dart makes type-safe

? Types are also used to define the return value of functions

? Even the types are used in defining the arguments of the function that it expects

* Dart supports several built-in types.These are the most common of the types that represent a single-value.

! int,double,num,String,bool

? If you want to deal both integers and floating-point numbers,you could use num datatype(super class of both)

* String is the basic class with which you write text

* Strings can be concatenated by + operator or by placing multiple strings next to another

* Yu can interpolate values into strings with $ operator for single values and ${} for expression

! String class includes number of methods you can use to manipulate the text

? split(),length property,contains(),indexOf()

* Dart  supports many different types of collections or data types that contain multiple values.

! The most common collections are List(array),Set,Map

* Lists are the most common collection (array or ordered group of objects)

? In dart,arrays are list objects

* Dart list literals look like js array literals

! "<type>" is used to define the type of values within the list

* Lists support being spread out into other lists.The spread operator puts each element from a list into a target list.

! We can also use null aware spread to avoid null-pointer crashes

! List class includes a number of properties/methods to manipulate a list

* You can use simple if and for statements inside list literals in order to programmatically add values.

! You can't include a code block with these if and for statements inside collection,you can only add single values.

* Collection for is used to add multiple values to a list programmatically.

! Sets are similar to lists,with two distinctions

* List is ordered,set is unordered

? Objects in a set are unique

! In order to create  a set,you use the set constructor function or a set literal.

? var variable_name=<variable_type>{};
? Set<variable_type> variable_name={};

* A map,also known commonly as a dictionary or hash, ordered collection of key-value pairs.

* Maps pair a key with  a value for easy,fast retrieval.

! Like lists and sets,maps can be declared with a constructor or literal syntax

* Like other collections,there are many class members on the Map class that make it more convenient to manipulate

? remove(key)
? keys
? values
? length
? isEmpty() and isNotEmpty()
? containsKey(key)
*/
void debug({String msg = 'null', int n = 0}) {
  print(msg);
  print(n);
}

int add(int x, int y, [int z = 0]) {
  int sum = x + y;
  if (z != null) {
    sum += z;
  }
  return sum;
}

void debugger(String message, int n) {
  print(message);
  print(n);
}

void main() {
  debugger('A bug!', 5);
  debug(msg: 'Hey,Sita', n: 10);
  print(add(5, 4));
  print(add(5, 4, 3));
  var age = 21;
  print("My age is $age");
  print("This year I'll be ${age + 1}");
  String greeting = "howdy";
  print(greeting.split(""));
  print(greeting.length);
  print(greeting.indexOf('o'));
  print(greeting.contains("hat"));
  int year = 2022;
  print(year);
  double percent = .65;
  print(percent);
  num sum;
  sum = 4 + 5;
  print(sum);
  bool isWinter = true;
  print(isWinter);
  var list2 = [1, 2, 3];
  List<int> list = [1, 2, 3];
  print(list);
  print(list2);
  print(list.length);
  print(list.first);
  print(list.last);
  list.add(4);

  print(list);
  var list3 = [0, ...list2];
  List a = ['Welcome', 'to'];
  List b = ['GeeksForGeeks'];
  a.addAll(b);
  print(a);
  print(list3);
  bool showToday = false;
  List listOfDays = ["Yesterday", if (showToday) "Today", "Tomorrow"];
  print(listOfDays);
  var s = <String>{"Hello"};
  print(s);
  Set<String> gf = {"GeeksforGeeks"};
  print(gf);
  var gfg1 = <String>{'Geeks', 'For', 'Geeks'};
  print(gfg1);
  Set numberSet = new Set();
  numberSet.add(100);
  numberSet.add(20);
  print(numberSet);
  print(numberSet.length);
  print(numberSet.elementAt(0));
  print(numberSet.contains(100));
  print(numberSet.remove(100));
  print(numberSet);
  gfg1.forEach((x) {
    if (x == 'Geeks') {
      print("Found");
    } else {
      print("Not Found");
    }
  });
  var mp = {'Ram': 18, 'Sita': 21, 'Afreen': 25};
  print(mp);
  print(mp['Ram']);
  var my_map = new Map();
  my_map[0] = 'Ranga';
  my_map[1] = 'Rishi';
  my_map[2] = 'Isha';
  print(my_map[2]);
  print(my_map.length);
  my_map.remove('Ranga');
  print(my_map.keys);
  print(mp.values);
}
