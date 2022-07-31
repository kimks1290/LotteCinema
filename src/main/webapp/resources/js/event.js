const eventRole = document.querySelectorAll(".bn_tit");
const eventBox = document.querySelectorAll(".bn_cont");
const opendBox = document.querySelector(".active");

eventRole[0].addEventListener("click", function () {
  eventBox[0].classList.toggle("maxHei");
});

eventRole[1].addEventListener("click", function () {
  eventBox[1].classList.toggle("maxHei");
});

eventRole[2].addEventListener("click", function () {
  eventBox[2].classList.toggle("maxHei");
});

eventRole[3].addEventListener("click", function () {
  eventBox[3].classList.toggle("maxHei");
});
