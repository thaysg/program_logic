///////////////////////////////////////////////////////////////////////////////
///Exercise 1

//!Two-fer or 2-fer is short for two for one. One for you and one for me.
//!Given a name, return a string with the message:

/* void main() {
  String name = 'John';
  if (name.isEmpty) {
    print(twoFer('you'));
  } else {
    print(twoFer(name));
  }
}

String twoFer(String name) {
  return 'One for $name, one for me.';
} */

///////////////////////////////////////////////////////////////////////////////
///Exercise 2
/*
//!
Given an array of numbers, return a new array that has only the numbers that 
are 5 or greater.
*/

/* void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(numbers.where((number) => number >= 5));
} */

///////////////////////////////////////////////////////////////////////////////
///Exercise 3
/*
//!
Given a year, report if it is a leap year.
The tricky thing here is that a leap year in the Gregorian calendar occurs:

on every year that is evenly divisible by 4
  except every year that is evenly divisible by 100
    unless the year is also evenly divisible by 400
*/

/* class Leap {
  bool leapYear(int year) {
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          print('$year it is a leap year');
          return true;
        } else {
          print('$year it is not a leap year');
          return false;
        }
      } else {
        print('$year it is a leap year');
        return true;
      }
    } else {
      print('$year it is not a leap year');
      return false;
    }
  }
}

final leap = Leap();

void main() {
  print(leap.leapYear(1996));
} */

///////////////////////////////////////////////////////////////////////////////
///Exercise 4
/*
Given a string of words, return the length of the shortest word(s).
*/

/* void main() {
  String sentence = 'Thays Garcia';
  print(findShort(sentence));
}

String findShort(String sentence) {
  List<String> words = sentence.split(' ');
  int shortest = words.first.length;
  for (String word in words) {
    if (word.length < shortest) {
      shortest = word.length;
    }
  }
  print(words.firstWhere((word) => word.length == shortest));
  return shortest.toString();
} */

///////////////////////////////////////////////////////////////////////////////
///Exercise 5
/*
Given a word, compute the Scrabble score for that word.

Letter Values
You'll need these:

Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
Examples
"cabbage" should be scored as worth 14 points:

3 points for C
1 point for A, twice
3 points for B, twice
2 points for G
1 point for E
And to total:

3 + 2*1 + 2*3 + 2 + 1
= 3 + 2 + 6 + 3
= 5 + 9
= 14
*/

///////////////////////////////////////////////////////////////////////////////
///Exercise 6
/*
/*
Given a word, compute the Scrabble score for that word.

Letter Values
You'll need these:

Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
Examples
"cabbage" should be scored as worth 14 points:

3 points for C
1 point for A, twice
3 points for B, twice
2 points for G
1 point for E
And to total:

3 + 2*1 + 2*3 + 2 + 1
= 3 + 2 + 6 + 3
= 5 + 9
= 14
*/

void main() {
  print(score("Thays"));
}

int score(String word) {
  int score = 0;
  Map<int, List<String>> map = {
    1: ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'],
    2: ['d', 'g'],
    3: ['b', 'c', 'm', 'p'],
    4: ['f', 'h', 'v', 'w', 'y'],
    5: ['k'],
    8: ['j', 'x'],
    10: ['q', 'z'],
  };
  List<String> letters = word.split('');
  for (String letter in letters) {
    map.forEach((key, value) {
      if (value.contains(
        letter.toLowerCase(),
      )) {
        score += key;
      }
    });
  }
  print('the score for $word is: ');
  return score;
}

*/

///////////////////////////////////////////////////////////////////////////////
///Exercise 7
/*
Given an age in seconds, calculate how old someone would be on:

Mercury: orbital period 0.2408467 Earth years
Venus: orbital period 0.61519726 Earth years
Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
Mars: orbital period 1.8808158 Earth years
Jupiter: orbital period 11.862615 Earth years
Saturn: orbital period 29.447498 Earth years
Uranus: orbital period 84.016846 Earth years
Neptune: orbital period 164.79132 Earth years
So if you were told someone were 1,000,000,000 seconds old, you should be able to say that they're 31.69 Earth-years old.
*/

/* void main() {
  double age = 31;
  print(spaceAge(age));
}

int spaceAge(age) {
  double mercury = 0;
  double venus = 0;
  double earth = 0;
  double mars = 0;
  double jupiter = 0;
  double saturn = 0;
  double uranus = 0;
  double neptune = 0;
  double earthYear = 31557600;
  double mercuryYear = earthYear * 0.2408467;
  double venusYear = earthYear * 0.61519726;
  double marsYear = earthYear * 1.8808158;
  double jupiterYear = earthYear * 11.862615;
  double saturnYear = earthYear * 29.447498;
  double uranusYear = earthYear * 84.016846;
  double neptuneYear = earthYear * 164.79132;
  double ageInSeconds = age * earthYear;
  mercury = ageInSeconds / mercuryYear;
  venus = ageInSeconds / venusYear;
  earth = ageInSeconds / earthYear;
  mars = ageInSeconds / marsYear;
  jupiter = ageInSeconds / jupiterYear;
  saturn = ageInSeconds / saturnYear;
  uranus = ageInSeconds / uranusYear;
  neptune = ageInSeconds / neptuneYear;
  print(
      'Your age in seconds is $ageInSeconds.\nMercury: ${mercury.toStringAsFixed(2)},'
      'years.\nVenus: ${venus.toStringAsFixed(2)} years.'
      '\nEarth: ${earth.toStringAsFixed(2)} years.\nMars: ${mars.toStringAsFixed(2)}'
      ' years.\nJupiter: ${jupiter.toStringAsFixed(2)} years.\nSaturn: ${saturn.toStringAsFixed(2)}'
      'years.\nUranus: ${uranus.toStringAsFixed(2)} years.\nNeptune: ${neptune.toStringAsFixed(2)} years.');
  return age;
} */

///////////////////////////////////////////////////////////////////////////////
///Exercise 8
/*
Given a phrase, count the occurrences of each word in that phrase.

For the purposes of this exercise you can expect that a word will always be one of:

A number composed of one or more ASCII digits (ie "0" or "1234") OR
A simple word composed of one or more ASCII letters (ie "a" or "they") OR
A contraction of two simple words joined by a single apostrophe (ie "it's" or "they're")
When counting words you can assume the following rules:

The count is case insensitive (ie "You", "you", and "YOU" are 3 uses of the same word)
The count is unordered; the tests will ignore how words and counts are ordered
Other than the apostrophe in a contraction all forms of punctuation are ignored
The words can be separated by any form of whitespace (ie "\t", "\n", " ")
For example, for the phrase "That's the password: 'PASSWORD 123'!", cried the Special Agent.\nSo I fled. the count would be:

that's: 1
the: 2
password: 2
123: 1
cried: 1
special: 1
agent: 1
so: 1
i: 1
fled: 1
*/

////////////////////////////////////////////////////////////////////////////////
///Exercise 9
/*
If you want to build something using a Raspberry Pi, you'll probably use 
resistors. For this exercise, you need to know two things about them:

Each resistor has a resistance value.
Resistors are small - so small in fact that if you printed the resistance value 
on them, it would be hard to read.
To get around this problem, manufacturers print color-coded bands onto the 
resistors to denote their resistance values. Each band has a position and a 
numeric value.

The first 2 bands of a resistor have a simple encoding scheme: each color maps 
to a single number.

In this exercise you are going to create a helpful program so that you don't 
have to remember the values of the bands.

These colors are encoded as follows:

Black: 0
Brown: 1
Red: 2
Orange: 3
Yellow: 4
Green: 5
Blue: 6
Violet: 7
Grey: 8
White: 9
The goal of this exercise is to create a way:

to look up the numerical value associated with a particular color band
to list the different band colors
Mnemonics map the colors to the numbers, that, when stored as an array, happen to map to their index in the array: Better Be Right Or Your Great Big Values Go Wrong.
*/

class ResistorColor {
  Map<String, int> colorCode = {
    'black': 0,
    'brown': 1,
    'red': 2,
    'orange': 3,
    'yellow': 4,
    'green': 5,
    'blue': 6,
    'violet': 7,
    'grey': 8,
    'white': 9
  };
  int? colorC(String color) => colorCode[color];
  List<String> colors() => colorCode.keys.toList();
}

void main() {
  ResistorColor r = ResistorColor();
  print(r.colorC('black'));
  print(r.colorC('brown'));
  print(r.colorC('red'));
  print(r.colorC('orange'));
  print(r.colorC('yellow'));
  print(r.colorC('green'));
  print(r.colorC('blue'));
  print(r.colorC('violet'));
  print(r.colorC('grey'));
  print(r.colorC('white'));
  print(r.colors());
} 


////////////////////////////////////////////////////////////////////////////////
///Exercise 10
/*
Instructions
If you want to build something using a Raspberry Pi, you'll probably use resistors. For this exercise, you need to know two things about them:

Each resistor has a resistance value.
Resistors are small - so small in fact that if you printed the resistance value on them, it would be hard to read.
To get around this problem, manufacturers print color-coded bands onto the resistors to denote their resistance values. Each band has a position and a numeric value.

The first 2 bands of a resistor have a simple encoding scheme: each color maps to a single number. For example, if they printed a brown band (value 1) followed by a green band (value 5), it would translate to the number 15.

In this exercise you are going to create a helpful program so that you don't have to remember the values of the bands. The program will take color names as input and output a two digit number, even if the input is more than two colors!

The band colors are encoded as follows:

Black: 0
Brown: 1
Red: 2
Orange: 3
Yellow: 4
Green: 5
Blue: 6
Violet: 7
Grey: 8
White: 9
From the example above: brown-green should return 15 brown-green-violet should 
return 15 too, ignoring the third color.
*/