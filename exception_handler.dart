/*
* An exception is an error that takes place inside the program

? When an exception occurs inside a program,the normal flow of the program is disrupted and it terminates abnormally,displaying the error and exception stack as output

! Built-in Exceptions

Deferred Exceptions
Format Exceptions
IO Exception
Isolate Spawn Exception
Timeout
Integer Division by Zero Exception

* Every built-in exception in Dart comes under a pre-defined class named Exception

*/
class Age implements Exception {
  String error = 'Geek, your age is less than 18 :(';
}

void main() {
  int person1_age = 20;
  int person2_age = 10;
  try {
    check(person1_age);
    check(person2_age);
  } catch (e) {
    print(e);
  }
}

void check(int age) {
  if (age < 18) {
    throw new Age();
  } else {
    print("You are eligible:");
  }
}
