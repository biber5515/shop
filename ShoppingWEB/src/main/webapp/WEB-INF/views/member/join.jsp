<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>testweb</title>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="/resources/assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<span class="logo"><img
				src="/resources/images/logo.svg" alt="" /></span>
			<h1>테스트웹페이지</h1>
			<p>
				비버의 웹페이지<br /> built by <a href="">@beaver</a> for <a
					href="https://html5up.net">HTML5 UP</a>.
			</p>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="/member/login" class="active">로그인</a></li>
				<li><a href="/member/join">회원가입</a></li>
				<li><a href="#second">게시판</a></li>
				<li><a href="#cta">아무거나</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Introduction -->
			<section id="intro" class="main">
				<div class="spotlight">
					<div class="content">
						<header class="major">
							<h2>회원가입</h2>
						</header>
						<p>
						<form id="join_form" method="post" >
							<div class="row gtr-uniform">
								<div class="col-12">아이디</div>
								<div class="col-12">
									<input type="text" name="memberId" class="id_input" id="demo_id" placeholder="id" />
									 <span id="idck"></span>
									 <span class="final_id_ck">아이디를 입력해주세요.</span>
								</div>
								<div class="col-12">비밀번호</div>
								<div class="col-12">
									<input type="password" name="memberPw" class="pw_input" placeholder="pw" />
								</div>
								<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
								<div class="col-12">비밀번호 재확인</div>
								<div class="col-12">
									<input type="password" id="demo_pwck" class="pwck_input" placeholder="pwck" />
								</div>
								<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
								 <span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
                				<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
								<div class="col-12">이름</div>
								<div class="col-12">
									<input type="text" name="memberName" class="user_input" placeholder="name" />
								</div>
								<span class="final_name_ck">이름을 입력해주세요.</span>
								<div class="col-12">이메일</div>
								<div class="col-12">
									<input type="text" name="memberMail" class="mail_input"
										placeholder="email" />
								</div>
							
								<div class="mail_check_wrap">
									<div class="col-6 col-12-small">
										<input type="text" class="mail_check_input_box" disabled="disabled" />
										<span class="final_mail_ck">이메일을 입력해주세요.</span>
										<sapn class="mail_input_box_warn"></sapn>
									</div>
									<div class="col-6 col-12-small">
									<br>
										<span class="button primary" id="email_button" onclick="emailCheck()">인증번호전송</span>
										<span id="mail_check_input_box_wran"></span>
									</div>
								</div>
								<div class="col-12">주소</div>
								<div class="col-6 col-12-small">
									<input type="text" class="address_input_1" name="memberAddr1" readonly="readonly"
										/>
								</div>
								<div class="col-6 col-12-small">
									<span class="button primary" onclick="execution_daum_address()">주소찾기</span>
								</div>
								<div class="col-12">
									<input type="text" class="address_input_2" name="memberAddr2" readonly="readonly"
										/>
								</div>
								<div class="col-12">
									<input type="text" class="address_input_3" name="memberAddr3" readonly="readonly"
								</div>
								<span class="final_addr_ck">주소를 입력해주세요.</span>
								<br>
								<div class="col-12">
									<input value="가입하기" class="join_button button primary" />
								</div>
							</div>
						</form>
						</p>
					</div>
				</div>
			</section>
		</div>

	</div>
	<!-- Footer -->
	<footer id="footer">
		<section>
			<h2>Aliquam sed mauris</h2>
			<p>Sed lorem ipsum dolor sit amet et nullam consequat feugiat
				consequat magna adipiscing tempus etiam dolore veroeros. eget
				dapibus mauris. Cras aliquet, nisl ut viverra sollicitudin, ligula
				erat egestas velit, vitae tincidunt odio.</p>
			<ul class="actions">
				<li><a href="generic.html" class="button">Learn More</a></li>
			</ul>
		</section>
		<section>
			<h2>Etiam feugiat</h2>
			<dl class="alt">
				<dt>Address</dt>
				<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
				<dt>Phone</dt>
				<dd>(000) 000-0000 x 0000</dd>
				<dt>Email</dt>
				<dd>
					<a href="">information@untitled.tld</a>
				</dd>
			</dl>
			<ul class="icons">
				<li><a href="" class="icon brands fa-twitter alt"><span
						class="label">Twitter</span></a></li>
				<li><a href="" class="icon brands fa-facebook-f alt"><span
						class="label">Facebook</span></a></li>
				<li><a href="" class="icon brands fa-instagram alt"><span
						class="label">Instagram</span></a></li>
				<li><a href="" class="icon brands fa-github alt"><span
						class="label">GitHub</span></a></li>
				<li><a href="" class="icon brands fa-dribbble alt"><span
						class="label">Dribbble</span></a></li>
			</ul>
		</section>
		<p class="copyright">
			&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.
		</p>
	</footer>

	</div>


	</div>

	<!-- Scripts -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
	var code="";
	 /* 유효성 검사 통과유무 변수 */
	 var idCheck = false;            // 아이디
	 var idckCheck = false;            // 아이디 중복 검사
	 var pwCheck = false;            // 비번
	 var pwckCheck = false;            // 비번 확인
	 var pwckcorCheck = false;        // 비번 확인 일치 확인
	 var nameCheck = false;            // 이름
	 var mailCheck = false;            // 이메일
	 var mailnumCheck = false;        // 이메일 인증번호 확인
	 var addressCheck = false         // 주소
	$(document).ready(function(){
		//회원가입 버튼(회원가입 기능 작동)
		$(".join_button").click(function(){
			
			// 입력값 변수
	        var id = $('.id_input').val();                 // id 입력란
	        var pw = $('.pw_input').val();                // 비밀번호 입력란
	        var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
	        var name = $('.user_input').val();            // 이름 입력란
	        var mail = $('.mail_input').val();            // 이메일 입력란
	        var addr = $('.address_input_3').val();        // 주소 입력란
	  
	        /* 아이디 유효성검사 */
	        if(id == ""){
	            $('.final_id_ck').css('display','block');
	            idCheck = false;
	        }else{
	            $('.final_id_ck').css('display', 'none');
	            idCheck = true;
	        }
	        /* 비밀번호 유효성 검사 */
	        if(pw == ""){
	            $('.final_pw_ck').css('display','block');
	            pwCheck = false;
	        }else{
	            $('.final_pw_ck').css('display', 'none');
	            pwCheck = true;
	        }
	        /* 비밀번호 확인 유효성 검사 */
	        if(pwck == ""){
	            $('.final_pwck_ck').css('display','block');
	            pwckCheck = false;
	        }else{
	            $('.final_pwck_ck').css('display', 'none');
	            pwckCheck = true;
	        }
	        /* 이름 유효성 검사 */
	        if(name == ""){
	            $('.final_name_ck').css('display','block');
	            nameCheck = false;
	        }else{
	            $('.final_name_ck').css('display', 'none');
	            nameCheck = true;
	        }

	        /* 이메일 유효성 검사 */
	        if(mail == ""){
	            $('.final_mail_ck').css('display','block');
	            mailCheck = false;
	        }else{
	            $('.final_mail_ck').css('display', 'none');
	            mailCheck = true;
	        }
	        /* 주소 유효성 검사 */
	        if(addr == ""){
	            $('.final_addr_ck').css('display','block');
	            addressCheck = false;
	        }else{
	            $('.final_addr_ck').css('display', 'none');
	            addressCheck = true;
	        }
	        /* 최종 유효성 검사 */
	        if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck&&mailnumCheck&&addressCheck ){
	 
	        	$("#join_form").attr("action", "/member/join");
				$("#join_form").submit();
	        }    
	        return false;
		});
	});
	$('.id_input').on("propertychange change keyup paste input", function(){

		//console.log("keyup 테스트");	
		var memberId = $('.id_input').val();			// .id_input에 입력되는 값
		var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
		
		$.ajax({
			type : "post",
			url : "/member/memberIdChk",
			data : data,
			success : function(result){
				if(result != 'fail'){
					$('#idck').css("color","green");
					$('#idck').text("사용가능한 아이디입니다");		
					idckCheck = true;
				} else {
					$('#idck').css("color","red");
					$('#idck').text("중복된 아이디입니다");		
					idckCheck = false;
				}
				
			}// success 종료
		}); // ajax 종료

	});// function 종료
	/* 인증번호 이메일 전송 */
	function emailCheck(){
		var email = $(".mail_input").val();
		 var cehckBox = $(".mail_check_input");        // 인증번호 입력란
		  var boxWrap = $(".mail_check_input_box");    // 인증번호 입력란 박스
		  var warnMsg = $(".mail_input_box_warn");    // 이메일 입력 경고글
		  
		   /* 이메일 형식 유효성 검사 */
		    if(mailFormCheck(email)){
		    	warnMsg.css("color", "green");
		        warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
		        warnMsg.css("display", "inline-block");
		    } else {
		    	warnMsg.css("color", "red");
		        warnMsg.html("올바르지 못한 이메일 형식입니다.");
		        warnMsg.css("display", "inline-block");
		        return false;
		    } 
		  $.ajax({
		        
		        type:"GET",
		        url:"mailCheck?email=" + email,
		        success:function(data){
		        	console.log("data : " + data);
		        	boxWrap.attr("disabled",false);
				 	$('#email_button').text('인증번호확인');
		        	$('#email_button').removeAttr("onclick");
		        	$('#email_button').attr("onclick","emailCodeCheck()");
		        	code=data;
		        }
		                
		    });
	    
	};
	/* 인증번호 비교 */
function emailCodeCheck(){
    
    var inputCode = $(".mail_check_input_box").val();        // 입력코드    
    var checkResult = $("#mail_check_input_box_wran");    // 비교 결과     
    if(inputCode == code){                            // 일치할 경우
        checkResult.html("인증번호가 일치합니다.");
        checkResult.css("color", "green");  
        mailnumCheck=true; //일치할경우
    } else {                                            // 일치하지 않을 경우
        checkResult.html("인증번호를 다시 확인해주세요.");
        checkResult.css("color", "red");
        mailnumCheck=false; //일치하지 않을경우
    }        
};


/* 다음 주소 연동 */
function execution_daum_address(){
 
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
        	// 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
             // 주소변수 문자열과 참고항목 문자열 합치기
                addr += extraAddr;
            
            } else {
            	addr += ' ';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $(".address_input_1").val(data.zonecode);
            //$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
            $(".address_input_2").val(addr);
            //$("[name=memberAddr2]").val(addr);            // 대체가능
            // 커서를 상세주소 필드로 이동한다.
            // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
            $(".address_input_3").attr("readonly",false);
             $(".address_input_3").focus();
            
 
        }
    }).open();    
 
}
/* 비밀번호 확인 일치 유효성 검사 */

$('.pwck_input').on("propertychange change keyup paste input", function(){
 
    var pw = $('.pw_input').val();
    var pwck = $('.pwck_input').val();
    $('.final_pwck_ck').css('display', 'none');
    if(pw == pwck){
        $('.pwck_input_re_1').css('display','block');
        $('.pwck_input_re_2').css('display','none');
        pwckcorCheck = true;
    }else{
        $('.pwck_input_re_1').css('display','none');
        $('.pwck_input_re_2').css('display','block');
        pwckcorCheck = false;
    }   
        
    
}); 
/* 입력 이메일 형식 유효성 검사 */
function mailFormCheck(email){
	   var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	    return form.test(email);


}
	</script>
	<!-- Scripts -->
	<script src="/resources/assets/js/jquery.min.js"></script>
	<script src="/resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="/resources/assets/js/browser.min.js"></script>
	<script src="/resources/assets/js/breakpoints.min.js"></script>
	<script src="/resources/assets/js/util.js"></script>
	<script src="/resources/assets/js/main.js"></script>


</body>
</html>