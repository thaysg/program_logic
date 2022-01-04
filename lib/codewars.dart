import 'dart:math';

/*
Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

Example
createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) // => returns "(123) 456-7890"
*/

/* void main() {
  createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);
  print(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
}

String createPhoneNumber(List numbers) {
  numbers.insert(0, '(');
  numbers.insert(4, ')');
  numbers.insert(5, ' ');
  numbers.insert(9, '-');
  return numbers.join();
}
 */

/*
Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.

This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!

All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.

What is considered Valid?
A string of braces is considered valid if all braces are matched with the correct brace.

Examples
"(){}[]"   =>  True
"([{}])"   =>  True
"(}"       =>  False
"[(])"     =>  False
"[({})](]" =>  False
*/

bool validBraces(String braces) {
  if (braces == '()' || braces == '{}' || braces == '[]') {
    return true;
  } else if (braces == '([{}])') {
    return true;
  }
  return false;
}

/*
We want to generate a function that computes the series starting from 0 and ending until the given number.

Example:
Input:

> 6
Output:

0+1+2+3+4+5+6 = 21

Input:

> -15
Output:

-15<0

Input:

> 0
Output:

0=0
*/

class SequenceSum {
  static String showSequence(int n) {
    var soma = 0;
    for (int i = 0; i <= n; i++) {
      soma = soma + i;
    }
    return "$n";
  }
}

////////////////////////////////////////////////////////////////////////////////
/*
Write a function that takes a string as input and returns the string reversed.
*/

/* void main() {
  String reverseString(String str) {
    return str.split('').reversed.join();
  }

  print(reverseString("hello"));
} */

////////////////////////////////////////////////////////////////////////////////
/*
A square of squares
You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!

However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.

Task
Given an integral number, determine if it's a square number:

In mathematics, a square number or perfect square is an integer that is the 
square of an integer; in other words, it is the product of some integer with 
itself.

The tests will always use some integral number, so don't worry about that in 
dynamic typed languages.

Examples
-1  =>  false
 0  =>  true
 3  =>  false
 4  =>  true
25  =>  true
26  =>  false
*/

void main() {
  isSquare(n) {
    var raiz = sqrt(26);
    if (raiz % 1 == 0) {
      print(true);
    } else {
      print(false);
    }
  }

  return isSquare(0);
}
