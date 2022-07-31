const clockText = document.querySelector(".main-clock-a");
const clock = new Date();

function loadClock() {
  const clockMonth = clock.getMonth() + 1;
  const clockDay = clock.getDate();
  const clockHours = clock.getHours();
  const clockMinutes = clock.getMinutes();
  clockText.innerText = `${clockMonth < 10 ? `0${clockMonth}` : clockMonth}.${
    clockDay < 10 ? `0${clockDay}` : clockDay
  } ${clockHours < 10 ? `0${clockHours}` : clockHours}:${
    clockMinutes < 10 ? `0${clockMinutes}` : clockMinutes
  } 기준`;
}

function init() {
  loadClock();
}

init();
