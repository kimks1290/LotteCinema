const listFont = document.querySelectorAll(".header-nav-li-font");
const listDiv = document.querySelectorAll(".header-nav-pop-container");

function mouseHover1() {
  listDiv[0].classList.remove("js-none");
  listFont[0].classList.add("js-nav-mouseover");
}
function mouseOut1() {
  listDiv[0].classList.add("js-none");
  listFont[0].classList.remove("js-nav-mouseover");
}

function mouseHover2() {
  listDiv[1].classList.remove("js-none");
  listFont[1].classList.add("js-nav-mouseover");
}
function mouseOut2() {
  listDiv[1].classList.add("js-none");
  listFont[1].classList.remove("js-nav-mouseover");
}

function mouseHover3() {
  listDiv[2].classList.remove("js-none");
  listFont[2].classList.add("js-nav-mouseover");
}
function mouseOut3() {
  listDiv[2].classList.add("js-none");
  listFont[2].classList.remove("js-nav-mouseover");
}

function mouseHover4() {
  listDiv[3].classList.remove("js-none");
  listFont[3].classList.add("js-nav-mouseover");
}
function mouseOut4() {
  listDiv[3].classList.add("js-none");
  listFont[3].classList.remove("js-nav-mouseover");
}

function mouseHover5() {
  listDiv[4].classList.remove("js-none");
  listFont[4].classList.add("js-nav-mouseover");
}
function mouseOut5() {
  listDiv[4].classList.add("js-none");
  listFont[4].classList.remove("js-nav-mouseover");
}
// -------------------------------------------------------

const hamberger = document.querySelector(".header-nav-hamberger");
const hambergerContainer =
  document.querySelector(".section-main").nextElementSibling;
const hambergerClose = document.querySelector(".hamberger-close-btn");

function handleHamberger() {
  hambergerContainer.classList.remove("js-none");
  hambergerClose.classList.remove("js-none");
}

function handleHambergerClose() {
  hambergerContainer.classList.add("js-none");
  hambergerClose.classList.add("js-none");
}

function init() {
  listFont[0].addEventListener("mouseover", mouseHover1);
  listFont[1].addEventListener("mouseover", mouseHover2);
  listFont[2].addEventListener("mouseover", mouseHover3);
  listFont[3].addEventListener("mouseover", mouseHover4);
  listFont[4].addEventListener("mouseover", mouseHover5);
  listFont[0].addEventListener("mouseout", mouseOut1);
  listFont[1].addEventListener("mouseout", mouseOut2);
  listFont[2].addEventListener("mouseout", mouseOut3);
  listFont[3].addEventListener("mouseout", mouseOut4);
  listFont[4].addEventListener("mouseout", mouseOut5);
  hamberger.addEventListener("click", handleHamberger);
  hambergerClose.addEventListener("click", handleHambergerClose);
}

init();
