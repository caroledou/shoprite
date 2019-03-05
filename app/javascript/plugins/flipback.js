const flipcardMoveBack = () => {
  const flipcard = document.querySelector(".flip-card .flip-card-inner");
  const i = document.querySelector("#show-back");
  // Ecouter le click sur ce noeud
  if (i) {
    i.addEventListener("click", (event) => {
      // Dans le callback, toggler la classe hover sur .flip-card
      flipcard.classList.toggle("hover");
    });
  }
};

export { flipcardMoveBack };

