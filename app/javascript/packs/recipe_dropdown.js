// var array1 = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'];

// array1.forEach(function(element) {
  // let `cart${element}` = document.querySelector(`.recipe-cart.${element}`);
  // console.log(cartElement);
  // const ingredientElement = document.querySelector(`.ingredient-cart.${element}`);
  // cartElement.addEventListener("click", (event) => {
    // if (ingredientElement.style.display === "none") {
      // ingredientElement.style.display = "";
    // } else {
      // ingredientElement.style.display = "none";
    // }
  // });
// });

const cartMonday = document.querySelector(".recipe-cart.monday");
const ingredientMonday = document.querySelector(".ingredient-cart.monday");
ingredientMonday.style.display = "none"
cartMonday.addEventListener("click", (event) => {
  if (ingredientMonday.style.display === "none") {
    ingredientMonday.style.display = "";
  } else {
    ingredientMonday.style.display = "none";
  }
});
const cartTuesday = document.querySelector(".recipe-cart.tuesday");
const ingredientTuesday = document.querySelector(".ingredient-cart.tuesday");
ingredientTuesday.style.display = "none"
cartTuesday.addEventListener("click", (event) => {
  if (ingredientTuesday.style.display === "none") {
    ingredientTuesday.style.display = "";
  } else {
    ingredientTuesday.style.display = "none";
  }
});

const cartWednesday = document.querySelector(".recipe-cart.wednesday");
const ingredientWednesday = document.querySelector(".ingredient-cart.wednesday");
ingredientWednesday.style.display = "none"
cartWednesday.addEventListener("click", (event) => {
  if (ingredientWednesday.style.display === "none") {
    ingredientWednesday.style.display = "";
  } else {
    ingredientWednesday.style.display = "none";
  }
});

const cartThursday = document.querySelector(".recipe-cart.thursday");
const ingredientThursday = document.querySelector(".ingredient-cart.thursday");
ingredientThursday.style.display = "none"
cartThursday.addEventListener("click", (event) => {
  if (ingredientThursday.style.display === "none") {
    ingredientThursday.style.display = "";
  } else {
    ingredientThursday.style.display = "none";
  }
});

const cartFriday = document.querySelector(".recipe-cart.friday");
const ingredientFriday = document.querySelector(".ingredient-cart.friday");
ingredientFriday.style.display = "none"
cartFriday.addEventListener("click", (event) => {
  if (ingredientFriday.style.display === "none") {
    ingredientFriday.style.display = "";
  } else {
    ingredientFriday.style.display = "none";
  }
});

const cartSaturday = document.querySelector(".recipe-cart.saturday");
const ingredientSaturday = document.querySelector(".ingredient-cart.saturday");
ingredientSaturday.style.display = "none"
cartSaturday.addEventListener("click", (event) => {
  if (ingredientSaturday.style.display === "none") {
    ingredientSaturday.style.display = "";
  } else {
    ingredientSaturday.style.display = "none";
  }
});

const cartSunday = document.querySelector(".recipe-cart.sunday");
const ingredientSunday = document.querySelector(".ingredient-cart.sunday");
ingredientSunday.style.display = "none"
cartSunday.addEventListener("click", (event) => {
  if (ingredientSunday.style.display === "none") {
    ingredientSunday.style.display = "";
  } else {
    ingredientSunday.style.display = "none";
  }
});


