const list1 = document.getElementById("tab_1");
const list2 = document.getElementById("tab_2");
const list3 = document.getElementById("tab_3");
const member = document.getElementsByTagName("span");
function show_list1() {
  list1.classList.add("active");
  list1.classList.remove("none");
  list2.classList.add("none");
  list2.classList.remove("active");
  list3.classList.add("none");
  list3.classList.remove("active");
  member[0].classList.add("listOn");
  member[1].classList.remove("listOn");
  member[6].classList.remove("listOn");
}
function show_list2() {
  list1.classList.remove("active");
  list1.classList.add("none");
  list3.classList.remove("active");
  list3.classList.add("none");
  list2.classList.remove("none");
  list2.classList.add("active");
  member[0].classList.remove("listOn");
  member[1].classList.add("listOn");
  member[6].classList.remove("listOn");
}
function show_list3() {
  list1.classList.remove("active");
  list1.classList.add("none");
  list2.classList.remove("active");
  list2.classList.add("none");
  list3.classList.remove("none");
  list3.classList.add("active");
  member[0].classList.remove("listOn");
  member[1].classList.remove("listOn");
  member[6].classList.add("listOn");
}

//회원
const userId = document.getElementById("userId");
const userPwd = document.getElementById("userPassword");
const loginBtn = document.querySelector(".btn_login");

function loginCheck() {
  if (userId.value == "") {
    alert("아이디를 입력하세요");
    userId.focus();
  } else if (userPwd.value == "") {
    alert("비밀번호를 입력하세요");
    userPwd.focus();
  } else {
    document.check1.submit();
  }
 
}

function loginClick() {
  loginBtn.addEventListener("click", loginCheck);
}

loginClick();

// 비회원
const noMemberList1 = document.getElementById("noMem1");
const noMemberList2 = document.getElementById("noMem2");
const noMemSpan1 = document.getElementById("noMember_1");
const noMemSpan2 = document.getElementById("noMember_2");

function show_noMemLogin() {
  noMemberList1.classList.add("active");
  noMemberList1.classList.remove("none");
  noMemberList2.classList.add("none");
  noMemberList2.classList.remove("active");
  noMemSpan1.classList.add("listOn");
  noMemSpan2.classList.remove("listOn");
}

function show_noMemCheck() {
  noMemberList1.classList.add("none");
  noMemberList1.classList.remove("active");
  noMemberList2.classList.add("active");
  noMemberList2.classList.remove("none");
  noMemSpan1.classList.remove("listOn");
  noMemSpan2.classList.add("listOn");
}

// ----------비회원 로그인 확인----------------------------

const closeNomem = document.querySelector(".btnCloseLayer");
const noMemPop = document.querySelector(".nomemLogcheck");
const openNomem = document.querySelector(".btn_login_nomem");

const LogName = document.getElementById("userName");
const LogTel = document.getElementById("userPhone");
const LogBirthyy = document.getElementById("birthyy");
const LogBirthmm = document.getElementById("birthmm");
const LogBirthdd = document.getElementById("birthdd");
const LogUniqueNum = document.getElementById("noMemberPwd");
const LogUniqueNumChk = document.getElementById("noMemberPwd2");

const popName = document.getElementById("noName");
const popTel = document.getElementById("noTel");
const popUniq = document.getElementById("noLogTel");

function show_noMemLog() {
  if (LogName.value == "") {
    alert("이름을 입력해 주세요.");
    LogName.focus();
  } else if (LogTel.value == "") {
    alert("휴대폰 번호를 입력해 주세요.");
    LogTel.focus();
  } else if (
    LogBirthyy.value == "" ||
    LogBirthmm.value == "" ||
    LogBirthdd.value == ""
  ) {
    alert("생년월일을 입력해 주세요.");
  } else if (LogUniqueNum.value == "") {
    alert("예매 비밀번호를 입력해 주세요.");
    LogUniqueNum.focus();
  } else if (LogUniqueNumChk.value == "") {
    alert("예매 비밀번호를 재입력해 주세요.");
    LogUniqueNumChk.focus();
  } else if (LogUniqueNum.value != LogUniqueNumChk.value) {
    alert("올바른 예매 비밀번호를 재입력해 주세요.");
    LogUniqueNum.focus();
  } else {
    noMemPop.classList.remove("js-none");
    popName.value = LogName.value;
    popTel.value = LogTel.value;
    popUniq.value = LogUniqueNum.value;
  }
}

function close_noMemLog() {
  noMemPop.classList.add("js-none");
}

// 비회원 예매 확인
const noMemReservePop = document.querySelector(".noMemReservePop");

function openReserve() {
  noMemReservePop.classList.remove("js-none");
}
function closeReserve() {
  noMemReservePop.classList.add("js-none");
}


