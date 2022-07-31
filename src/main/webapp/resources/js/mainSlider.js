const leftBtn = document.querySelector(".main-slider-left-btn");
const rightBtn = document.querySelector(".main-slider-right-btn");
const imgBox = document.querySelectorAll(".owl-item");
const images = document.querySelectorAll(".slider-img");
let index = 0;

function prev() {
  if (index === 0) {
    imgBox[0].classList.add("js-none");
    imgBox[1].classList.add("js-none");
    imgBox[2].classList.remove("js-none");
    index = 2;
  } else if (index === 1) {
    index -= 1;
    imgBox[0].classList.remove("js-none");
    imgBox[1].classList.add("js-none");
    imgBox[2].classList.add("js-none");
  } else {
    index -= 1;
    imgBox[0].classList.add("js-none");
    imgBox[1].classList.remove("js-none");
    imgBox[2].classList.add("js-none");
  }
}

function next() {
  if (index === 2) {
    imgBox[0].classList.remove("js-none");
    imgBox[1].classList.add("js-none");
    imgBox[2].classList.add("js-none");
    index = 0;
  } else if (index === 1) {
    index += 1;
    imgBox[0].classList.add("js-none");
    imgBox[1].classList.add("js-none");
    imgBox[2].classList.remove("js-none");
  } else {
    index += 1;
    imgBox[0].classList.add("js-none");
    imgBox[1].classList.remove("js-none");
    imgBox[2].classList.add("js-none");
  }
}

function init() {
  leftBtn.addEventListener("click", prev);
  rightBtn.addEventListener("click", next);
}

init();
setInterval(next, 4000);

////-------------------------------------------------------------------------
const videoPop1 = document.getElementById("videoPop1");
const videoPop2 = document.getElementById("videoPop2");
const videoPop3 = document.getElementById("videoPop3");
const videoAuto = document.getElementsByTagName("video");

function videoOn1() {
  videoPop1.classList.remove("js-none");
  videoAuto[0].play();
}

function videoOn2() {
  videoPop2.classList.remove("js-none");
  videoAuto[1].play();
}

function videoOn3() {
  videoPop3.classList.remove("js-none");
  videoAuto[2].play();
}

function videoOff1() {
  videoPop1.classList.add("js-none");
  videoAuto[0].pause();
}
function videoOff2() {
  videoPop2.classList.add("js-none");
  videoAuto[1].pause();
}
function videoOff3() {
  videoPop3.classList.add("js-none");
  videoAuto[2].pause();
}
