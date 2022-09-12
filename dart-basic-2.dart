/*
 * Dart supports if,else if and else for control flow  statements as you'd expect

? Finally dart is sane and condition must evaluate to a boolean.

! There's no such concept of truthiness and all values coerce to true or false

* If you want to repeat expressions or certain section of code by using loops concept

* If you need to know the index, your best bet is the standard for loop

* If you don't care about the index, the for-in loop is great option.

? while loops behave as you'd expect. They evaluate the condition before the loop runs -- meaning it may never run at all

? do-while loops, on the other hand, evaluate the condition after the loop runs. So they always execute the code in the block at least once

? These two keywords help you manipulate the flow of the loop. Use continue in a loop to immediately jump to the next iteration, and 
? use break to break out of the loop completely:

* switch statements are great when there are many possible conditions for a single value

* Ternary operator is technically an operator ,but it's also kind of an if/else substitute

! It's also kind of a ?? alternative depending on the situation

* It's used to conditionally assign a value

? It has 3 portions condition,value if it's true and value if it's false

* Functions look familar in Dart

? First line in the function is the signature.

? It defines the return type of the function, the function name, and lists all arguments the function requires or accepts.

! Dart also supports nice short-hand syntax for any function that has only one expression

? The code inside the function block only one line? Then it's probably a single expression, and you can use this syntax to be concise

* Dart is lexically scoped .

* Every code block has access to variables "above it".

*/
String greet(String name) => 'Hello,$name!';
String makeGreeting(String name) {
  return 'Hello,$name';
}

void main() {
  bool flag = true;
  if (flag) {
    print("Bring an umbrella");
  } else {
    print("Check the weather first!");
  }
  for (var i = 0; i < 5; i++) {
    print(i);
  }
  List<String> pets = ['Nora', 'Wallace', 'Phoebe'];
  for (var x in pets) {
    print(x);
  }
  var j = 0;
  while (j < 5) {
    j++;
    print(j);
  }
  for (var i = 0; i < 55; i++) {
    if (i == 5) {
      continue;
    }
    if (i == 10) {
      break;
    }
    print(i);
  }

  int number = 1;
  switch (number) {
    case 0:
      print('zero!');
      break; // The switch statement must be told to exit, or it will execute every case.
    case 1:
      print('one!');
      break;
    case 2:
      print('two!');
      break;
    default:
      print('choose a different number!');
  }
// It only works with runtime constants.

// Each case in a switch statement should end with a keyword  break that exits the switch.
  var b = 10;
  var c = 20 > b ? 20 : b;
  print(c);
  String name = makeGreeting("Ram");
  print(name);
  print(greet('Steve Jobs'));
}
//* Arrow functions implicitly return the result of the expressions,So there's no need to include return keyword


// Using else-if allows you to check for multiple conditions and if they evaluate to false,fall back

// you'll use break or return. break simply exits out of the switch;
