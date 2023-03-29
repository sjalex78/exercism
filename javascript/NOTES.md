# Notes

# My Table of content

- [Variables and Constants](#id-section1)
- [Function Declarations](#id-section2)
- [Exposing to Other Files](#id-section3)

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
