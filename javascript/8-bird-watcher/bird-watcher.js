// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Calculates the total bird count.
 *
 * @param {number[]} birdsPerDay
 * @returns {number} total bird count
 */
export function totalBirdCount(birdsPerDay) {
  const initialValue = 0;
  const addBirdsTogether = birdsPerDay.reduce(
    (accumulator, currentValue) => accumulator + currentValue,
    initialValue
  );
  return addBirdsTogether;
}
 // 0 initial
/**
 * Calculates the total number of birds seen in a specific week.
 *
 * @param {number[]} birdsPerDay
 * @param {number} week
 * @returns {number} birds counted in the given week
 */
export function birdsInWeek(birdsPerDay, week) {
  const startWeekIndex = (week*7)-7;
  const birdWeekList = birdsPerDay.splice(startWeekIndex,7,0);
  for (let i = 0; i < (birdWeekList.length) ; i++) {
   const sumBirds = birdWeekList.reduce(
     (accumulator, currentValue) => accumulator + currentValue,
     0
   );
   return sumBirds;
}
}

/**
 * Fixes the counting mistake by increasing the bird count
 * by one for every second day.
 *
 * @param {number[]} birdsPerDay
 * @returns {number[]} corrected bird count data
 */
export function fixBirdCountLog(birdsPerDay) {
  for (let index = 0; index < birdsPerDay.length; index+=2) birdsPerDay[index]++
  return birdsPerDay;
}
