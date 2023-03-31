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
export function timeToMixJuice(name) {
  if (name === "Pure Strawberry Joy") {
    return 0.5;
  }
  else if (
    (name === "Energizer") || (name ==="Green Garden")) {
      return 1.5
    }
  else if (name === "All or Nothing") {
    return 5;
  }
  else if (name ==="Tropical Island") {
    return 3;
  }
  return 2.5;
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export function limesToCut(wedgesNeeded, limes) {
  let limeCount = 0;
  let numberOfWedgesCut = 0;
  while (numberOfWedgesCut < wedgesNeeded && limes[limeCount]) {
    if (limes[limeCount] === "small") {
      numberOfWedgesCut += 6;
    }
    if (limes[limeCount] === "medium") {
      numberOfWedgesCut += 8;
    }
    if (limes[limeCount] === "large") {
      numberOfWedgesCut += 10;
    }
    limeCount += 1;
  }
  return limeCount
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
  let timeList = orders.map(function(element) {
    return timeToMixJuice(element);
  });
  let orderListIndex = 0;
  while(timeLeft  > 0){
    orders.shift();
    timeLeft = timeLeft - timeList[orderListIndex];
    orderListIndex ++;
  }
  return orders;
}
