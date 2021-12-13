<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>
</head>
<body>
	 <script>
    $(function(){
    	console.log("a");
        var IMP = window.IMP; // 생략가능
        IMP.init('imp62074745'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'KH Books 도서 결제',
            amount : '12000',
            buyer_email : 'a',
            buyer_name : 'b',
            buyer_tel : 'c',
            buyer_addr : 'd',
            buyer_postcode : '123-456',
            //m_redirect_url : 'http://www.naver.com'
        });
        
    });
    </script>
</body>
</html>