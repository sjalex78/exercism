// @ts-check
//
// ☝🏽 The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion on the web
// and supported IDEs when implementing this exercise. You don't need to
// understand types, JSDoc, or TypeScript in order to complete this JavaScript
// exercise, and can completely ignore this comment block and directive.

// 👋🏽 Hi again!
//
// A quick reminder about exercise stubs:
//
// 💡 You're allowed to completely clear any stub before you get started. Often
// we recommend using the stub, because they are already set-up correctly to
// work with the tests, which you can find in ./freelancer-rates.spec.js.
//
// 💡 You don't need to write JSDoc comment blocks yourself; it is not expected
// in idiomatic JavaScript, but some companies and style-guides do enforce them.
//
// Get those rates calculated!

/**
 * The day rate, given a rate per hour
 *
 * @param {number} ratePerHour
 * @returns {number} the rate per day
 */
export function dayRate(ratePerHour) {
  return ratePerHour * 8;
}

/**
 * Calculates the number of days in a budget, rounded down
 *
 * @param {number} budget: the total budget
 * @param {number} ratePerHour: the rate per hour
 * @returns {number} the number of days
 */
export function daysInBudget(budget, ratePerHour) {
  return Math.floor(budget / ratePerHour / 8);
}

/**
 * Calculates the discounted rate for large projects, rounded up
 *
 * @param {number} ratePerHour
 * @param {number} numDays: number of days the project spans
 * @param {number} discount: for example 20% written as 0.2
 * @returns {number} the rounded up discounted rate
 */
//Often, the freelancer's clients hire him for projects spanning over multiple months.
// In these cases, the freelancer decides to offer a discount for every full month, and the remaining days are billed at day rate.
// **_Every month has 22 billable days._**
// Help him estimate his cost for such projects, given an hourly rate, the number of days the project spans, and a monthly discount rate.
// The discount is always passed as a number, where `42%` becomes `0.42`. The result _must_ be **rounded up** to the nearest whole number.

export function priceWithMonthlyDiscount(ratePerHour, numDays, discount) {
  const numOfBillMonths = Math.floor(numDays / 22);
  const numRemainDays = numDays % 22;
  let discountHourRate = ratePerHour * (1 - discount);
  return Math.ceil((numRemainDays * 8 * ratePerHour) + (
      numOfBillMonths * 22 * 8 * discountHourRate))
}
