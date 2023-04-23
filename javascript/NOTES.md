# Notes

# My Table of content

- [Variables and Constants](#id-section1)
- [Functions](#id-section2)
- [Exposing to Other Files](#id-section3)
- [Numbers](#id-section4)
- [Arrays](#id-section5)
- [Strings](#id-section6)
- [Boolean](#id-section7)
- [Conditionals](#id-section8)
- [Increment/Decrement](#id-section9)
- [While Loops](#id-section10)
- [Objects](#id-section11)
- [Null Undefined](#id-section12)
- [Closures](#id-section13)
- [Type Conversions](#id-section14)

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

## Functions

<div id='id-section2'/>

### Declarations

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


## Strings

  <div id='id-section6'/>

- stores text data.
- text in single quotes or double quotes.
` eg "Hello, World!" `
- a list of characters where the first character has index 0. You can access an individual character of the string using square brackets and the index of the letter you want to retrieve.

```js
'cat'[1];
// => 'a'
'cat'.length;
// => 3
```

### Concatenation and Methods

- concatenate strings is to use the addition operator +.

``` js
'I like' + ' ' + 'cats.';
// => "I like cats."
```

- toUpperCase and toLowerCase - change the case of all characters
- trim - remove whitespace at the beginning and end
- includes, startsWith and endsWith - determine whether another string is part of the given string
- slice - extract a section of the string


## Booleans

  <div id='id-section7'/>

- A boolean represents one of two values: true or false.
- Logical operators (!, &&, ||) are typically used with boolean values and they return a boolean value.


## Conditionals

<div id='id-section8'/>

- A common way to conditionally execute logic in JavaScript is the if-statement
- It consists of the if keyword, a condition wrapped in round brackets and a code block wrapped in curly brackets.
- The code block will only be executed if the condition evaluates to true.

```js
if (condition) {
  // code that is executed if "condition" is true
}


if (condition) {
  // code that is executed if "condition" is true
} else {
  // code that is executed otherwise
}

if (condition1) {
  // code that is executed if "condition1" is true
} else if (condition2) {
  // code that is executed if "condition2" is true
  // but "condition1" was false
} else {
  // code that is executed otherwise
}
```

## Increment/Decrement

<div id='id-section9'/>

- JavaScript has an increment and a decrement operator.
- They modify a variable in place
- ++ adds one to a number
- -- subtracts one from a number.

```js
let i = 3;
i++;
// i is now 4

let j = 0;
j--;
// j is now -1
```

- **for loop** is one of the most commonly used statements to repeatedly execute some logic.

```js
for (initialization; condition; step) {
  // code that is executed repeatedly as long as the condition is true
}
```

- counter variable, the condition checks whether the loop should be continued or stopped and the step increments the counter at the end of each repetition.
The individual parts of the header are separated by semicolons.

```javascript
const list = ['a', 'b', 'c'];
for (let i = 0; i < list.length; i++) {
  // code that should be executed for each item list[i]
}
```

Defining the step is often done using JavaScript's increment or decrement operator as shown in the example above.
These operators modify a variable in place.
`++` adds one to a number, `--` subtracts one from a number.

```javascript
let i = 3;
i++;
// i is now 4

let j = 0;
j--;
// j is now -1
```

## While Loops

<div id='id-section10'/>

- while loop you can execute code repeatably as long as a certain condition is fulfilled

```js
while (condition) {
  // code that is executed repeatedly as long as the condition is true
}
```

- there is also has a do-while loop. Here the condition is checked after the loop body was executed. This is useful when the condition depends on the outcome of the code in the body.

```js
do {
  // The code here will always be executed once and then
  // repeatedly while the condition is true.
} while (condition);
```
Inside a loop body you can use the break keyword to stop the execution of the loop entirely. In contrast to this, the keyword continue only stops the execution of the current iteration and continues with the next one. With continue you can often avoid wrapping big parts of the loop body in an if-statement.

```js
let i = 0;

while (i < 100) {
  i = i + 2;

  if (i % 3 === 0) {
    continue;
  }

  // The code here will only be executed when i was not divisible
  // by 3 in the check above.
}
```

- map over an array

```js
let newArrayName = array.map(function(element) {
  return functionA(element);
});
```

## Objects

<div id='id-section11'/>
- Objects are collections of key-value pairs.
- As such, they can be used in the same way as what are often referred to as maps or dictionaries in other languages.
- only the type of the key is restricted: it has to be a string.
- The values inside one object can have different types.
- They can be primitive types like numbers but also arrays, other objects or even functions.

### Creating an Object

You create an object using curly brackets.
You can also directly include some entries.
For that, state the key first, followed by a colon and the value.

```javascript
const emptyObject = {};

const obj = {
  favoriteNumber: 42,
  greeting: 'Hello World',
  useGreeting: true,
  address: {
    street: 'Trincomalee Highway',
    city: 'Batticaloa',
  },
  fruits: ['melon', 'papaya'],
  addNumbers: function (a, b) {
    return a + b;
  },
};
```

The trailing comma after the last entry is optional in JavaScript.

You might wonder why the keys are not wrapped in quotation marks although they are supposed to be strings.
This is a short-hand notation.
If the key follows the naming rules for a JavaScript [identifier][mdn-identifier], you can omit the quotation marks.
For keys with special characters in the name, you need to use the usual string notation.

```javascript
const obj = {
  '1keyStartsWithNumber': '...',
  'key/with/slashes': '...',
  'key-with-dashes': '...',
  'key with spaces': '...',
  '#&()[]{}èä樹keyWithSpecialChars': '...',
};
```

### Retrieving a Value

There are two ways to retrieve the value for a given key, dot notation and bracket notation.

```javascript
const obj = { greeting: 'hello world' };

obj.greeting;
// => hello world

obj['greeting'];
// => hello world

// Bracket notation also works with variables.
const key = 'greeting';
obj[key];
// => hello world
```

Using the dot notation as a shorthand has the same restriction as omitting the quotation marks.
It only works if the key follows the identifier naming rules.

```js
  console.log("keys",Object.keys(visitor)) // keys ['key1', 'key2', etc]
  console.log("values",Object.values(visitor)) // values [ value1, value2, etc]
  console.log("entries",Object.entries(visitor)) // entries [['key1', 'value'] ['key 2', 'value2']]
```

### Adding or Changing a Value

You can add or change a value using the assignment operator `=`.
Again, there are dot and bracket notations available.

```javascript
const obj = { greeting: 'hello world' };

obj.greeting = 'Hi there!';
obj['greeting'] = 'Welcome.';

obj.newKey1 = 'new value 1';
obj['new key 2'] = 'new value 2';

const key = 'new key 3';
obj[key] = 'new value 3';
```

### Deleting an Entry

You can delete a key-value pair from an object using the `delete` keyword.

```javascript
const obj = {
  key1: 'value1',
  key2: 'value2',
};

delete obj.key1;
delete obj['key2'];
```

### Checking Whether a Key Exists

You can check whether a certain key exists in an object with the `hasOwnProperty` method.

```javascript
const obj = { greeting: 'hello world' };

obj.hasOwnProperty('greeting');
// => true

obj.hasOwnProperty('age');
// => false
```

### Looping Through an Object

There is a special `for...in` loop to iterate over all keys of an object.

```javascript
const obj = {
  name: 'Ali',
  age: 65,
};

for (let key in obj) {
  console.log(key, obj[key]);
}
// name Ali
// age 65
```

To avoid subtle errors, you should always assume the `for...in` loop visits the keys in an arbitrary order.
Also, be aware that `for...in` includes [inherited keys][concept-inheritance] in its iteration.

[concept-inheritance]: /tracks/javascript/concepts/inheritance


## Null Undefined

<div id='id-section12'/>

- null means an empty value and is also a primitive type in JavaScript. The variable which has been assigned as null contains no value.
- Undefined, on the other hand, means the variable has been declared, but its value has not been assigned.
- value null is used as an intentional "empty value" for variables of any type.

```js
let name = null;
// name is intentionally set to "empty" because it is not
// available
You can check whether a variable is null by using the strict equality operator ===.

let name = null;

name === null;
// => true
```

Undefined
A variable that has not been assigned a value is of type undefined.1

That means while null represents an empty value (but still a value), undefined represents the total absence of a value. 🤯

undefined appears in different contexts.

If a variable is declared without a value (initialization), it is undefined.

``` js
let name;
console.log(name); // => undefined
```

If you try to access a value for a non-existing key in an object, you get undefined.

```js
let obj = {
  name: 'John',
};
console.log(obj.age); // => undefined
```

If a function does not return a value, the result is undefined.

```js
function printName(name) {
  'My name is ' + name;
}
console.log(printName('John')); // => undefined
```

If an argument is not passed to a function, it is undefined, unless that argument has a default value.

``` js
function printName(name) {
  return name;
}
console.log(printName()); // => undefined
```

You can check whether a variable is undefined using the strict equality operator ===.

```js
let name;

name === undefined;
// => true
```

Optional Chaining
If you try to retrieve a nested value in an object but the parent key does not exist, JavaScript will throw an error. To easily avoid this, optional chaining was added to the language specification in 2020. With the optional chaining operator ?. you can ensure that JavaScript only tries to access the nested key if the parent was not null or undefined. Otherwise undefined is returned.

```js
const obj = {
  address: {
    street: 'Trincomalee Highway',
    city: 'Batticaloa',
  },
};

obj.address.zipCode;
// => undefined

obj.residence.street;
// => TypeError: Cannot read property 'street' of undefined

obj.residence?.street;
// => undefined
```

Nullish Coalescing
There are situations where you want to apply a default value in case a variable is null or undefined (but only then). To address this, the nullish coalescing operator ?? was introduced in 2020. It returns the right-hand side operand only when the left-hand side operand is null or undefined. Otherwise, the left-hand side operand is returned.

```js
let amount = null;
amount = amount ?? 1;
// => 1

amount = 0;
amount = amount ?? 1;
// => 0
```

## Closures

<div id='id-section13'/>

- allows variables from an outer lexical scope to be used inside of a nested block of code. JavaScript supports closures transparently, and they are often used without knowing what they are.

```js
// Top-level declarations are global-scope
const dozen = 12;

{
  // Braces create a new block-scope
  // Referencing the outer variable is a closure.
  const twoDozen = dozen * 2;
}

// Functions create a new function-scope and block-scope.
// Referencing the outer variable here is a closure.
function nDozen(n) {
  return dozen * n;
}
```

Closures to save state and pass along values
Using a mutable variable declaration (like let or var) allows for state to be preserved:

```js
let counter = 0;

// This function closure increments the counter's state in the outer lexical context.
// This way the counter can be shared between many calling contexts.
export function increment() {
  counter += 1;
  return counter;
}
```

# Type Conversion

<div id='id-section14'/>

JavaScript does not have a construct to cast into a (different) type like many other languages but some built-in helpers can be used instead.
Most notably, `Boolean`, `Number` and `String` can be used as functions to convert a value to the respective type.

### Converting to a Boolean (Truthy/Falsy Values)

With `Boolean(value)` you can convert any value to a boolean.
There is a fixed set of values, so called _falsy_ values, that convert to `false`.
Most importantly, `false`, `0`, empty string, `null`, `undefined` and `NaN` are falsy.

For all other values, `Boolean` returns `true`.
These values are called _truthy_.

### Converting to a Number

`Number(value)` can be used to convert a value to a number.
Whitespaces at the beginning and the end of a string are ignored and an empty string is converted to `0`.
If you try to convert a non-primitive value or a string that does not represent a number, the result is `NaN`

### Converting to a String

With `String(value)` you can convert a value to a string.

For arrays, the `String` function will apply the string conversion for each element and join the results with a comma.
You can also apply the `join` method yourself, e.g. to customize the separator.
Note that in these cases `null` and `undefined` will be converted to an empty string.