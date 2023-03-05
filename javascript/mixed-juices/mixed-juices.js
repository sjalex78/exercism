// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */

const prepTime = {
  "Pure Strawberry Joy": 0.5,
  Energizer: 1.5,
  "Green Garden": 1.5,
  "Tropical Island": 3,
  "All or Nothing": 5,
};

// export function timeToMixJuice(name) {
//   if (Object.keys(prepTime).includes(name)) {
//     return prepTime[name];
//   } else {
//     return 2.5;
//   }
// }

// switch
export function timeToMixJuice(name) {
  switch (name) {
    case "Pure Strawberry Joy":
      return 0.5;
    case "Energizer":
      return 1.5;
    case "Green Garden":
      return 1.5;
    case "Tropical Island":
      return 3;
    case "All or Nothing":
      return 5;
    default:
      return 2.5;
  }
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
//  */

// 6 wedges from a `'small'` lime, 8 wedges from a `'medium'` lime and 10 from a `'large'` lime.
export function limesToCut(wedgesNeeded, limes) {
  const limeRates = {
    small: 6,
    medium: 8,
    large: 10,
  };

  let wedgesCut = 0;
  let count = 0;

  while (wedgesCut < wedgesNeeded) {
    if (!limes[count]) {
      break;
    }
    wedgesCut += limeRates[limes[count]];
    count++;
  }
  return count;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
  while (timeLeft > 0) {
    timeLeft -= timeToMixJuice(orders[0]);
    orders.shift();
  }
  return orders;
}
