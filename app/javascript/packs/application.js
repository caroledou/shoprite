import "bootstrap";

// Selectionner le noeud du DOM qui a classe .flip-card
const flipcard = document.querySelector(".flip-card .flip-card-inner");
const i = document.querySelector(".card-info");
// Ecouter le click sur ce noeud
i.addEventListener("click", (event) => {
  // Dans le callback, toggler la classe hover sur .flip-card
  flipcard.classList.toggle("hover");
});
