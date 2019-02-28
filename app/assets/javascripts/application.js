//= require rails-ujs
//= require_tree .
// $('.flip-card .flip-card-inner').click(function() {
//     $(this).closest('.flip-card').toggleClass('hover');
//     $(this).css('transform, rotateY(180deg)');
// });

// Selectionner le noeud du DOM qui a classe .flip-card
const flipcard = document.querySelector(".flip-card .flip-card-inner");
flipcard.addEventListener("click", (event) => {
  console.log(event);
  console.log(event.currentTarget);
  flipcard.classList.toggle("hover");
});
// Ecouter le click sur ce noeud
// Dans le callback, toggler la classe hover sur .flip-card
