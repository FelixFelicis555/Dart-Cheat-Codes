/*
* Collections are dart objects that contain more objects,referred to as elements.

! Iterable collection :
 ? It's a collection that implements Dart class Iterable
 ? The most common iterables are List and Set.

* In a nutshell ,an iterable is a collection that has sequential access to it's elements

* It stores its elements in order,you can find the elements within the collection by its position.

* Dart's iterables are 0-indexed,you can access to different elements by their index.

! Along with indexing,there are variety of methods and properties on iterables that are handy

! Two other looping mechanisms - for-in,forEach method on iterables

! For-in is just like standard for-loop

* forEach looks like  a callback

*Performing an action on each element in the list.

* For reading values directly,outside of loops,there are 3 basic methods
  ? Bracket notation
  ? Iterable.first
  ? Iterable.last

  ! Adding elements to lists is done with 4 methods
  ? add(elem) -->list,set
  ?addAll([elm1,elm2,etc])-->list,set,map
  ?insert(index,elem)-->list
  ?insertAll(index,[elem1,elem2,etc]) --->list

* Often you may need to check one or more elements exit in an list

 ? indexOf(elem) -->list
 !Returns the index of the given element in the list. If the element doesn't exist, if returns -1. 

 ?contains(elem) --->lists,set
 !It returns a boolean based on whethet the given element is in the list or not.

These are mightly useful when keeping track of some data with a map in memory.

? any & every

! This is where working with iterables becomes complex if you aren't familiar with callbacks

* The any() method checks if at least one item in the List satisfies the given condition.

* any() returns a boolean value depending on the condition.

* In comparison, the every() method checks if all the items in the List satisfy the given condition.

* every() returns a boolean value depending on the condition.

! The follow methods are used frequently to remove elements from list:
  
  ?clear - removes every element from list,but retains list
  ? remove(elem)- removes single element from list,which is passed
  ?removeWhere(callback)
   ? removes every element in the list that satisfies the test

! There are also some other methods like removeAt,removeLast,removeRange(startIndex,endIndex);

* Filtering elements from a list for our purposes,means making a new list out of only some of elements from original list

 ? where
 ?skipWhile
 ?takeWhile

* This method allows you to iterate the list and apply the predicate function and returns a stream of elements.

! takeWhile(testCallback)
this will return every element in a list from index 0 to the element that first satisfies the test.

! skipWhile(testCallback)
this will return every element in a list starting with the first element that passes the test to the final element in the list.

! Changing elements in list: map,Expand

* list.map() works just like js map() it would take callback as argument

* Expand() has two common use cases:
  ? flatening nested lists
  ? duplicating elements in a list


* Deriving values from elements: Fold,reduce,join

! They are used to generate a single value by combining on the elements of the list.

! fold and reduce are similar

* They both iterate over the elements and perform an operation on each element and the element created thus far in the iteration.

! Let's talk about difference

? Reduce must return, from each iteration of the callback being called,the same type as the type of the elements of the list

?fold needs a "starting value", which it uses in the first iteration of the callback.

* Dart's List class has an instance method join() that can be used to join a List of any type to a String.

! Iterables in Dart solve type of return list problem while working with methods by providing several typecasting methods.

Type-Casting 

* toList() turns iterable into list
* toSet()  turns iterable into Set

* A string can be cast to an integer using the int.parse() method in Dart.

* double.parse() to convert string into floating-point value

* toString() to convert an integer value into string

Here we convert the data type of one variable to another

! One of the other casting keywords, which lives particularly on Iterables, is cast<T>.

*/
void main() {
  List<int> ages = [29, 27, 42];
  for (int x in ages) {
    print(x);
  }
  ages.forEach((int age) => print(age));
  List<String> cities = ['Vijayawada', 'Guntur', 'Bangalore', 'Vizag', 'Delhi'];
  print(cities);
  cities.add('Chennai');
  cities.addAll(['Mumbai', 'Kolkata']);
  print(cities);
  cities.insert(1, 'Punjab');
  print(cities);
  List numbers = [9, 5, 8, 17, 11, 15, 23];
  if (numbers.any((item) => item > 7)) {
    print('Atleast one number >7 in list');
  }
  var flag = numbers.every((e) => e < 4);
  if (flag) {
    print("All numbers are smaller than 4");
  } else {
    print("All items are greater than 4");
  }

  List emps = [
    {"salary": 5000, "name": "john"},
    {"salary": 6000, "name": "andre"},
    {"salary": 8000, "name": "mark"},
    {"salary": 11000, "name": "flint"}
  ];
  List result = emps.where((o) => o['salary'] > 10000).toList();

  print(result);

  List<int> arr = [4, 10, 3, 6];
  var powNumbers = arr.map((num) => num * 2);
  print(powNumbers);
  var pairs = [
    [1, 2],
    [3, 4]
  ];
  var flattened = pairs.expand((pair) => pair).toList();
  print(flattened);

  List<int> nums = [1, 2, 3, 4, 5];
  final sum = nums.reduce((int sumSoFar, int currentInt) {
    return sumSoFar + currentInt;
  });
  print(sum);
  List<String> values = ['dart', 'flutter', 'programming'];
  print(values.join(','));
}
