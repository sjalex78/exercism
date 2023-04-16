// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Create a function that returns a function making use of a closure to
 * perform a repeatable 2d translation of a coordinate pair.
 *
 * @param {number} dx the translate x component
 * @param {number} dy the translate y component
 *
 * @returns {function} a function which takes an x, y parameter, returns the
 *  translated coordinate pair in the form [x, y]
 */
export function translate2d(dx, dy) {
//  function combineVariables(x,y) {
//   return [x + dx, y + dy];}
//   return combineVariables;
return (x, y) => [dx + x ,dy + y]
}

// add_two
// add_two(10) === 12
// add_two(8) === 10

// add_three(5) == 8

// add_two = (num) => num + 2
// add_three = (num) => num + 3

// add_stuff = (stuff) => {return (num) => num + stuff }
// add_two = add_stuff(2)
// add_three = add_stuff(3)

/**
 * Create a function that returns a function making use of a closure to
 * perform a repeatable 2d scale of a coordinate pair.
 *
 * @param {number} sx the amount to scale the x component
 * @param {number} sy the amount to scale the y component
 *
 * @returns {function} a function which takes an x, y parameter, returns the
 *  scaled coordinate pair in the form [x, y]
 */
export function scale2d(sx, sy) {
  // return function name(x,y) {
  //   return [sx*x,sy*y]
  // }
  return (x, y) => [sx * x, sy * y];
}

/**
 * Create a composition function that returns a function that combines two
 * functions to perform a repeatable transformation
 *
 * @param {function} f the first function to apply
 * @param {function} g the second function to apply
 *
 * @returns {function} a function which takes an x, y parameter, returns the
 *  transformed coordinate pair in the form [x, y]
 */
export function composeTransform(f, g) {
  // return function name(a, b) {
  //   return (g(...f(a,b)))
    return (a, b) => g(...f(a, b));
  };
// }

/**
 * Return a function that memoizes the last result.  If the arguments are the same as the last call,
 * then memoized result returned.
 *
 * @param {function} f the transformation function to memoize, assumes takes two arguments 'x' and 'y'
 *
 * @returns {function} a function which takes x and y arguments, and will either return the saved result
 *  if the arguments are the same on subsequent calls, or compute a new result if they are different.
 */
// export function memoizeTransform(f) {
//   return function name(a, b) {
//     if (f === true){
//       return [a+b]
//     }
//     // console.log(f(a,b))
//     return f(a,b)
//   }
// }
export function memoizeTransform(f) {
  let lastX = undefined;
  let lastY = undefined;
  let lastResult = undefined;
  return function (x, y) {
    if (lastX === x && lastY === y) return lastResult;
    lastX = x;
    lastY = y;
    lastResult = f(x, y);
    return lastResult;
  };
}
