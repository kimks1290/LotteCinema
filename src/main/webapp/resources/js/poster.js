const poster = document.querySelectorAll(".over_box");
const posterDiv = document.querySelectorAll(".main-poster-hover-container");

function posterMouseover1() {
  poster[0].classList.remove("js-none");
}
function posterMouseLeave1() {
  poster[0].classList.add("js-none");
}

function posterMouseover2() {
  poster[1].classList.remove("js-none");
}
function posterMouseLeave2() {
  poster[1].classList.add("js-none");
}

function posterMouseover3() {
  poster[2].classList.remove("js-none");
}
function posterMouseLeave3() {
  poster[2].classList.add("js-none");
}

function posterMouseover4() {
  poster[3].classList.remove("js-none");
}
function posterMouseLeave4() {
  poster[3].classList.add("js-none");
}

function posterMouseover5() {
  poster[4].classList.remove("js-none");
}
function posterMouseLeave5() {
  poster[4].classList.add("js-none");
}

function init() {
  posterDiv[0].addEventListener("mouseenter", posterMouseover1);
  posterDiv[0].addEventListener("mouseleave", posterMouseLeave1);

  posterDiv[1].addEventListener("mouseenter", posterMouseover2);
  posterDiv[1].addEventListener("mouseleave", posterMouseLeave2);

  posterDiv[2].addEventListener("mouseenter", posterMouseover3);
  posterDiv[2].addEventListener("mouseleave", posterMouseLeave3);

  posterDiv[3].addEventListener("mouseenter", posterMouseover4);
  posterDiv[3].addEventListener("mouseleave", posterMouseLeave4);

  posterDiv[4].addEventListener("mouseenter", posterMouseover5);
  posterDiv[4].addEventListener("mouseleave", posterMouseLeave5);
}

init();
