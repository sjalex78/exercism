# Notes

# My Table of content

- [Variables and Constants](#id-section1)
- [Function Declarations](#id-section2)
- [Exposing to Other Files](#id-section3)
- [Numbers](#id-section4)
- [Arrays](#id-section5)

## Variables and Constants

<div id='id-section1'/>

JavaScript - using variables or constants.

- variables are always written in `camelCase`
- constants are written in `SCREAMING_SNAKE_CASE`.
- Variables in JavaScript can be defined using the `const`, `let`or `var` keyword.

- A variable can reference different values over its lifetime when using `let` or `var`. For example, `myFirstVariable` can be defined and redefined many times using the assignment operator `=`:

```javascript
let myFirstVariable = 1;
myFirstVariable = 'Some string';
myFirstVariable = new SomeComplexClass();
```

- In contrast to `let` and `var`, variables that are defined with `const` can only be assigned once.

## Function Declarations

<div id='id-section2'/>

In JavaScript, units of functionality are encapsulated in _functions_,

- Functions are invoked using `()` syntax.

```javascript
function add(num1, num2) {
  return num1 + num2;
}

add(1, 3);
// => 4
```

## Exposing to Other Files

  <div id='id-section3'/>

To make a `function`, a constant, or a variable available in _other files_, they need to be `exported` using the `export` keyword. Another file may then `import` these using the `import` keyword.

```javascript
// file.js
export const MY_VALUE = 10;

export function add(num1, num2) {
  return num1 + num2;
}

// file.spec.js
import { MY_VALUE, add } from './file';

add(MY_VALUE, 5);
// => 15
```

## Numbers
  <div id='id-section4'/>

- JavaScript only has two types of number:
  - number: a numeric data type in the double-precision 64-bit floating-point format (IEEE 754).
  `Eg. -6, -2.4, 0, 0.1, 1, 3.14, 16.984025, 25, 976, 1024.0 and 500000`
  - bigint: a numeric data type that can represent integers in the arbitrary precision format.
  `Eg. -12n, 0n, 4n, and 9007199254740991n`

- Rounding
  - round down (floor)
  - round up (ceil) decimal numbers to nearest whole numbers.

```js
Math.floor(234.34); // => 234
Math.ceil(234.34); // => 235
```
JavaScript provides 6 different operators to perform basic arithmetic operations on numbers.

- `+`: The **addition** operator is used to find the sum of numbers.
- `-`: The **subtraction** operator is used to find the difference between two numbers
- `*`: The **multiplication** operator is used to find the product of two numbers.
- `/`: The **division** operator is used to divide two numbers.

```javascript
2 - 1.5; //=> 0.5
19 / 2; //=> 9.5
```

- `%`: The **remainder** operator is used to find the remainder of a division performed.

  ```javascript
  40 % 4; // => 0
  -11 % 4; // => -3
  ```

- `**`: The **exponentiation** operator is used to raise a number to a power.

  ```javascript
  4 ** 3; // => 64
  4 ** 1 / 2; // => 2
  ```
- JavaScript uses the PEDMAS (Parentheses, Exponents, Division/Multiplication, Addition/Subtraction)

- `x += y` is same as `x = x + y`.
Often, this is used with a number instead of a variable `y`.
The 5 other operations can also be conducted in a similar style.

```javascript
let x = 5;
x += 25; // x is now 30

let y = 31;
y %= 3; // y is now 1
```

## Arrays

  <div id='id-section5'/>

- can hold any type of primitives or objects, even mixed types.
- add elements between square brackets [].
- To read from the array, put the index in square brackets [] after the identifier.
- The indices of an array start at zero.

`Eg

const numbers = [1, 'two', 3, 'four'];
numbers[2];
// => 3`

To retrieve the number of elements that are in an array:
`numbers.length;`

To change an element in the array, you assign a value at the index:
`numbers[0] = 'one'`

- **push**
The push() method adds one or more elements to the end of an array and returns the new length of the array.1
`numbers.push(5); // => 5`

- **pop**
The pop() method removes the last element from an array and returns that element.
`numbers.pop()'

- **shift**
The shift() method removes the first element from an array and returns that removed element.
`numbers.shift()`

- **unshift**
The unshift() method adds one or more elements to the beginning of an array.
`numbers.unshift('one')`

- **splice**
The splice() method changes the contents of an array by removing or replacing existing elements and/or adding new elements in place.
`numbers.splice(2, 1, 'one')`
