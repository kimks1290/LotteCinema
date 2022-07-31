<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>event</title>
    <link rel="icon" href="image/favicon.ico" />
    <link rel="stylesheet" href="reset.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      rel="stylesheet"
      href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="${path }/resources/css/reset.css" />
    <link rel="stylesheet" href="${path }/resources/css/style.css" />    
  </head>
  <body>
  <c:import url="../default/header.jsp" />
	<div id="headers"></div>
    <div class="inner">
      <div class="contents_event_home">
        <div class="title_top">
          <h2 class="tit">전체 이벤트</h2>
        </div>
        <div class="lst_wrap">
          <h3 class="tit">영화</h3>
          <ul class="img_lst_wrap">
            <li>
              <a href="#none">
                <img src="${path }/resources/image/eadf35816e06437382de9bc074b6d746.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.23 ~ 2022.06.29</div>
              </a>
            </li>
            <li>
              <a href="#none">
                <img src="${path }/resources/image/200ed96b70a54ec0895b011190bdb9f4.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.23 ~ 2022.06.29</div>
              </a>
            </li>
            <li>
              <a href="#none">
                <img src="${path }/resources/image/6baa43c4c2424670aa0fec6c5f69dc84.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.23 ~ 2022.07.05</div>
              </a>
            </li>
          </ul>
          <a class="btn_txt_more ty2" href="#none">더보기</a>
        </div>
        <div class="lst_wrap">
          <h3 class="tit">시사회/무대인사</h3>
          <ul class="img_lst_wrap">
            <li>
              <a href="#none">
                <img src="${path }/resources/image/b823460ee8924b7c861849ff9b8a4b4c.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.07.02 ~ 2022.07.02</div>
              </a>
            </li>
            <li>
              <a href="#none">
                <img src="${path }/resources/image/1d72e616c79440a2bb9ef5f18074934c.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.25 ~ 2022.06.25</div>
              </a>
            </li>
            <li>
              <a href="#none">
                <img src="${path }/resources/image/d12194f94c3a47648232d948d99dbf6e.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.22 ~ 2022.06.22</div>
              </a>
            </li>
          </ul>
          <a class="btn_txt_more ty2" href="#none">더보기</a>
        </div>

        <div class="lst_wrap">
          <h3 class="tit">HOT</h3>
          <ul class="img_lst_wrap">
            <li>
              <a href="#none">
                <img src="${path }/resources/image/7e9b3f33c0334f74a72701485e921da6.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.13 ~ 2022.07.18</div>
              </a>
            </li>
            <li>
              <a href="#none">
                <img src="${path }/resources/image/72f0d7c4fde44b1b812cfd9dac857a9b.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.08 ~ 2022.08.19</div>
              </a>
            </li>
            <li>
              <a href="#none">
                <img src="${path }/resources/image/56ef96323271449aa0d9ebd819dd282c.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.01 ~ 2022.06.30</div>
              </a>
            </li>
          </ul>
          <a class="btn_txt_more ty2" href="#none">더보기</a>
        </div>

        <div class="lst_wrap">
          <h3 class="tit">제휴할인</h3>
          <ul class="img_lst_wrap">
            <li>
              <a href="#none">
                <img src="${path }/resources/image/e779bbd39d4a4aa39436c7edda9aaddc.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.21 ~ 2022.07.20</div>
              </a>
            </li>
            <li>
              <a href="#none">
                <img src="${path }/resources/image/7b4d557f401f495fab18c376cb44545e.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.15 ~ 2022.06.30</div>
              </a>
            </li>
            <li>
              <a href="#none">
                <img src="${path }/resources/image/2bf5616d345f4523a2a2700888ec0eb0.jpg" alt="" />
                <div class="itm_tit"></div>
                <div class="itm_date">2022.06.07 ~ 2023.02.28</div>
              </a>
            </li>
          </ul>
          <a class="btn_txt_more ty2" href="#none">더보기</a>
        </div>
        <div class="lst_wrap_scroll">
          <h3 class="tit">우리동네영화관</h3>
          <ul class="ev_bn_wrap">
            <li>
              <a
                role="button"
                class="bn_tit"
                aria-expanded="false"
                href="#none"
              >
                <span class="txt_zone ty5">경북/대구</span>
                <strong>[대구지역] 문화소비 할인쿠폰 6천원 할인 이벤트</strong>
                <span class="bn_tit_date">2022.06.20 ~ 2022.07.12</span>
              </a>
              <div class="bn_cont maxHei">
                <div>
                  ■ 기간 : 2022년 6월 13일(월) ~ 7월 12일(화)<br />
                  ■ 진행 영화관 :
                  성서,상인,대구광장,동성로,율하,프리미엄만경,프리미엄칠곡,현풍<br />
                  ■ 혜택 : 영화 6천원 할인 (ID당 6천원 할인 쿠폰 2매 지급)<br />
                  ■ 혜택 방법 : 모바일(APP,WEB) 이벤트 페이지 內 쿠폰 다운로드 →
                  6천원 할인 쿠폰 사용(현장, 예매 모두 사용 가능)
                </div>
                <div class="list_bdr_box">
                  <h3 class="title txt_caution2">유의사항</h3>
                  <div class="list_inner_box">
                    &nbsp;- 쿠폰 수량이 모두 소진 될 경우 이벤트는 조기 종료
                    됩니다.<br />
                    &nbsp;&nbsp;&nbsp;※ 쿠폰을 보유하고 있더라도, 사용 가능
                    수량이 마감될 경우 사용 불가 합니다.<br />
                    &nbsp;- 쿠폰은 ID당 2매 다운로드 가능하며
                    모바일(APP,WEB)에서만 가능 합니다.<br />
                    &nbsp;- 모든 영화 및 특수관에서 사용 가능 합니다.<br />
                    &nbsp;- 제휴 중복 할인, 신용/체크카드 청구할인 등 중복할인
                    가능 합니다.<br />
                    &nbsp;&nbsp;&nbsp;※ 단, 일부 제휴사 및 자사할인등은 중복
                    할인 불가 할 수 있습니다.<br />
                    &nbsp;- 좌석당 최소 1,000원 이상 결제 시에만 쿠폰 사용 가능
                    합니다.<br />
                    &nbsp;- 6,000원 이하 영화 금액과 장애인, 시니어 요금 적용은
                    불가 합니다.<br />
                    &nbsp;- 자세한 사항은 이벤트 페이지 참고 부탁 드립니다.
                  </div>
                </div>
              </div>
            </li>

            <li>
              <a
                role="button"
                class="bn_tit"
                aria-expanded="false"
                href="#none"
              >
                <span class="txt_zone ty1">서울</span>
                <strong
                  >[서울] ★ 수락산과 카톡 친구 하면 영화 3천원 할인 ★</strong
                >
                <span class="bn_tit_date">2022.05.19 ~ 2022.06.30</span>
              </a>
              <div class="bn_cont maxHei">
                <div>
                  <p>
                    · 혜택 : 롯데시네마 수락산관 카카오 플러스 친구 인증 시 성인
                    3천원, 청소년 2천원 즉시 할인<br />
                    ★ 수락산과 카톡 친구 하면 영화 3,000원 할인 ★<br />
                    · 이용방법 : 카카오 플러스 친구 추가 후 매표소 직원에게
                    인증<br />
                    · 기간 : 22년 5월 19일 ~ 6월 30일 까지<br />
                    · 대상 : 성인, 청소년
                  </p>
                </div>

                <div class="list_bdr_box">
                  <h3 class="title txt_caution2">유의사항</h3>
                  <div class="list_inner_box">
                    · 본 이벤트는 롯데시네마 수락산관에서만 진행<br />
                    · 카카오 플러스 친구 인증 할인은 본인만 적용 가능<br />
                    · 주중(월~목)에 한하여 적용 가능하며 주말 및 공휴일은 할인
                    불가<br />
                    · 조조, 심야, 경로, 우대 등 기타 할인 중복 불가<br />
                    · 배급사 사정에 따라 일부 영화는 제한될 수 있음
                  </div>
                </div>
              </div>
            </li>

            <li>
              <a
                role="button"
                class="bn_tit"
                aria-expanded="false"
                href="#none"
              >
                <span class="txt_zone ty5">경북/대구</span>
                <strong>[대구/경북] 롯데시네마 X BC카드 50% 이벤트</strong>
                <span class="bn_tit_date">2022.05.09 ~ 2022.07.31</span>
              </a>
              <div class="bn_cont maxHei">
                <div>
                  <p>
                    ■ 기간 : ~ 7월 31일(일)<br />
                    ■ 진행 영화관 : 성서, 상인, 대구광장, 동성로, 대구율하,
                    구미공단(총 6개관)<br />
                    ■ 혜택 : 영화 2만원 이상 결제 시, 50% 할인(최대 1만원)<br />
                    ■ 혜택 방법 : [페이북] 어플 실행 → 혜택(하단) → #마이태그 →
                    롯데시네마 50% 할인권 다운로드 → B/C 로고가 있는 카드로 영화
                    2만원 이상 결제 시 1만원(자동)할인<br />
                    ㆍ온라인 예매 : 페이북 내 등록 되어있는 BC카드만 할인 적용
                    가능<br />
                    ㆍ오프라인(현장) : 모든 BC카드 할인 적용 가능
                  </p>
                </div>
                <div class="list_bdr_box">
                  <h3 class="title txt_caution2">유의사항</h3>
                  <div class="list_inner_box">
                    <p>
                      ■ 1인1일1회(월 최대 4회) 횟수 제한<br />
                      ■ 월 단위 선착순 이벤트로 조기 마감될 수 있습니다.<br />
                      ■ 상세내용은 [마이태그] 內 유의사항 참고해 주시기 바랍니다
                    </p>
                  </div>
                </div>
              </div>
            </li>

            <li>
              <a
                role="button"
                class="bn_tit"
                aria-expanded="false"
                href="#none"
              >
                <span class="txt_zone ty2">경기/인천</span>
                <strong>우리, 다시 만나요!</strong>
                <span class="bn_tit_date">2022.05.04 ~ 2022.06.30</span>
              </a>
              <div class="bn_cont maxHei">
                <div>
                  <p>
                    ★ 우리, 다시 만나요! ★ (재방문 이벤트)<br />
                    ● 기간 : 2022년 06월 30일 까지<br />
                    ● 대상 : 해당 기간 내 롯데시네마 영종하늘도시관 영화 관람 후
                    티켓 제시하는 재방문 고객<br />
                    ● 혜택 : 영화 관람 3천원 할인<br />
                    ● 이용방법 : 기간 내 영화 관람 티켓 제시 시 할인 혜택 적용
                    (티켓 하단에 해당 이벤트가 명시 된 지류티켓 기준입니다.)
                  </p>
                </div>
                <div class="list_bdr_box">
                  <h3 class="title txt_caution2">유의사항</h3>
                  <div class="list_inner_box">
                    <p>
                      - 본 이벤트는 영종하늘도시에서만 진행합니다.<br />
                      - 주중/주말/공휴일 적용 가능합니다.<br />
                      - 조조, 심야, 청소년, 어린이, 우대, 경로, 문화의 날 등
                      중복 할인 적용이 불가합니다.<br />
                      - 현장(매표소) 발권 시 일반 2D 영화 기준에 적용됩니다.<br />
                      - 배급사 사정에 따라 일부 영화는 제한될 수 있습니다.
                    </p>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <c:import url="../default/footer.jsp" />
	<script src="${path }/resources/js/event.js"></script>
  </body>
</html>
