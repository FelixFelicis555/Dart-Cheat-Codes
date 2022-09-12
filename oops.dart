/*
 * Modern applications basically all do the same thing
 
 * They give us smart human to process and colloborate over large data sets.
 
 * Some apps are about communication,like socail media & email
 
 * Some are about organization,such as calendars and note-taking
 
 ! They give users a nice way to interact with data.

 ? Data represents real world

 Use of Object-Oriented Programming:
   !Makes code easy to read
   !Easy to reason about
   !Higly reusable

 Consider if were writing a point of sale(POS) system used to sell goods to customers.

 ! What kind of classes do you think you'd need to represent things?

 ! What kind of things does POS app need to know about?
 Perhaps we need clases to represent Customer,Business,Employee,Product,Money

 But in real-life,it's a process or an event


 ! Class
  
  * It's  a blueprint for an object

  * Describes an object that  you can create

  * Object itself is what holds any specific data & logic

  Property or Class Members or Attributes
  Methods or Functions or Actions
  
  
! In Dart you don't need to use new keyword  to create new objects of class like in other languages,The compiler will infer that for you

* Constructors are used to create objects with pre-determined values for the properties.

Constructors come in 3 flavours:
   ? Standard Constructors
   ? Named Constructors
   ? Factory Constructors
*/

class Cat {
  String name = "";
  String color = "";
  // simple constructor
  Cat(this.name, this.color);

  // named Constructor are used to define additional constructors

  // They return a new instance of the class

  // usually with some values given defined values

  Cat.orange(this.name) {
    color = 'Orange';
  }
  Cat.black(this.name) {
    color = 'Black';
  }

  @override
  String toString() => "Cat :${this.name},${this.color}";
}

void main() {
  print(Cat('nora', 'orange'));
  print(Cat.orange('nora'));
  print(Cat.black('nora'));
  // print(Cat.fromJson({'name': 'Nora', 'color':'Orange'}));
}

/*

* The interface of an object is exposed via instance properties and instance methods.

? These are the most "basic" members on a class.

! Properties are variables of any type defined on the class.

!Methods are functions on a class that provide behavior for an object.

!Instance methods on objects are exposed via instances of the class.

* hey have access to other variables and methods on the instance, as well as the keyword this.

? You have several options when defining methods on classes.

 ! Private
 this cannot be called from outside the class itself
  it is not exposed to _instances_ of the class

  ! Static
  a static method isn't tied to an instance
  rather, it's logically tied to a class
  static methods are compile-time constant, 
  so you don't have access to 'this'

  * Getters and setters are special methods that provide explicit read and write access to an object's properties.

  ? Getters are often useful to set computed properties.

  But, setters don't provide read-access to a variable. 
  
  They're used to set the value of a variable and nothing else.

! Inheritance
 ? You can inherit from or extend a class using the extends keyword

 * This allows you share properties and methods between classes that are similar,
 
 Also, it allows different subtypes to share a common runtime type so that static analysis doesn't fail

 * Class fields in Dart can be final.
 
 * Marking a field as final tells Dart that this variable can never be re-assigned.
 
 ! Importantly, this doesn't mean that the variable must be declared and assigned at the same time. 

 ? Often, you'll use the final keyword for class properties, and assign them a value in the constructor.


! Initializer List

* An initializer list allows you to assign properties to a new instance variables before the constructor body runs, but after creation

! Factory Constructors

Factory constructors return am instance of the class, but it doesn't necessarily create a new instance.

!Rules for factory constructors:

* Factory constructors do use the return key word.
*You cannot refer to 'this' within the factory constructor.

!  Singleton Pattern

* Singleton pattern is a pattern used in object-oriented programming which ensures that a class has only one instance and also provides a global point of acces to it.

! Abstraction & Interfaces

 ? An abstract class, which is  similar to interfaces, defines a class that can't be instantiated

 no method body means you're defining an abstract method

 * abstract methods must be overridden in implementation classes
 
 * abstract classes _can_ implement some functionality. 
 
 when the method functionality is written on the abstract class, the implementation subclasses don't have to override it.

* It ensures that all implementation subclasses define all the properties and methods that abstract class defines, but leaves the implementation to each subclass.

! Mixins

Mixins are a way of resuing a class's code  in different class hierarchies.

 Use mixins on your class via the 'with' keyword
  
  To create mixins,we use mixin keyword

! Extension Methods
 * They allow you to add functionality to existing libraries & classes
 
 But those are avialable in your application

*/

/*
 * Fun-Fact
 
 ? Flutter uses Dart as Dart allows Flutter to avoid the need for a separate  declarative layout language like XML & JSX

 ! Encapsulation

 ? A combination of the getter and the setter methods are used to transform or encapsulate instance variables. 

 The getter is an instance method specified by get keyword. 
 
 This method does not take any arguments, hence it does not contain parentheses.
 
  While the setter method is specified by set keyword which receives value to be set as an argument.

! Inheritance

? Inheritance is the act of getting characteristics from parent component.

! Types of Constructor: 
 Default
 Named
 Redirect
 Constant

 ! Callable Classes

 * Dart classes can also behave like functions (they can be invoked, take arguments and return something).
 
 * To enable this, we have to define the call() method inside the class.
 
 ! Composition

 * mixins, which can be used to extend class functionalities without direct inheritance, simulating multiple inheritances, and reusing code. 
 * This is how composition is achieved.
 
 ! Encapsulation
  Dart doesn't contain keywords for restricting access,like public,protected or private

Encapsulation happens at library level,not at class level

! any identifier (class, class member, top-level function, or variable) that starts with an underscore _ it is private to its library.

 ! if you extend a class its constructor is not inherited;

 * Generators
 
 ? Generators are used when we need to lazily produce a sequence of values.

 Dart supports 2 types of Generator functions:

  * Synchronous Generator
  Returns Iterable Object

  * Asynchronous Generator
   Returns Stream Object

   We mark those functions as async*,sync* & yield to return values

  ! Super refer to Super-Class

  @override - To indicate whether we're overriding a member

  ! Dart doesn't allow overloading
  
*/