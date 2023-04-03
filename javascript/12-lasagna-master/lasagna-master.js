
export function cookingStatus(remainingTime) {
  if (remainingTime === 0){
    return "Lasagna is done.";
  }
  else if (remainingTime > 0){
    return "Not done, please wait.";
  }

  return 'You forgot to set the timer.';
}

export function preparationTime(layers, timePerLayer){
  if (timePerLayer === undefined){
  let cookingTime = layers.length * 2;
  return cookingTime;
  }
  let cookingTime = layers.length * timePerLayer
  return cookingTime;
}

export function quantities(ingredients){
  let quantitySummary ={noodles: 0, sauce:0};
  ingredients.map(function(ingredient) {
    if (ingredient === "noodles") {
      return quantitySummary.noodles += 50;
    }
    if (ingredient === "sauce") {
      return quantitySummary.sauce += 0.2;
    }
    return null;
  });
  return quantitySummary;
}

export function addSecretIngredient(friendsList, myList) {
  let specialIngredient = friendsList[(friendsList.length)-1]
  myList.push(specialIngredient);
  }

  export function scaleRecipe(amountForTwo, numberOfPortions) {
    const cookingForSpecifiedPortions = {};
    Object.keys(amountForTwo).forEach(function(key) {
      cookingForSpecifiedPortions[key] = (amountForTwo[key] / 2) * numberOfPortions;
    });
    return cookingForSpecifiedPortions;

  }
