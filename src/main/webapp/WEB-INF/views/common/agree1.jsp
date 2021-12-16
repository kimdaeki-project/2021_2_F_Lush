<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.popup-wrap .popup {
    position: fixed;
    left: 50%;
    top: 50%;
    z-index: 2;
    width: 600px;
    padding: 0 0 30px 40px;
    box-sizing: border-box;
    background: #fff;
    transform: translate(-50%,-50%);
}
</style>
</head>
<body>
	<div class="popup">
    <h2 class="tit">개인정보 수집·이용 동의</h2>
    <ul class="list">
      <li>1. 개인정보 수집받는 자 : (주)러쉬코리아</li>
      <li>2. 개인정보의 수집 · 이용목적 : 동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률안 통과를 위한 서명 제출</li>
      <li>3.수집하려는 개인정보의 항목 : 성명, 주소, 이메일</li>
      <li>4. 개인정보의 보유 및 이용기간 : 동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률안 통과 시까지 보유 및 서명 철회시 파기</li>
      <li>개인정보 수집 동의를 거부할 수 있으며, 동의 거부시 동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률안 통과를 위한 서명 캠페인 참여가 제한 될 수 있습니다.</li>
    </ul>
    <!-- <div class="check">
      <span class="txt">※ 위 개인정보 수집이용에 동의하십니까?</span>
      <span class="radio-element">
        <label for="radio1-true"><input type="radio" name="radio1" id="radio1-true" checked><em>예</em></label>
        <label for="radio1-false"><input type="radio" name="radio1" id="radio1-false"><em>아니요</em></label>
      </span>
    </div> -->
    <button type="button" class="btn-close"><span>닫기</span></button>
  </div>
</body>
</html>