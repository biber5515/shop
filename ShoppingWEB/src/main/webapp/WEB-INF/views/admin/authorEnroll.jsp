<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML>
<html>
	<%@include file="../includes/admin/header.jsp" %>

				<!-- Main -->
					<div id="main">

						<!-- Content -->
							<section id="content" class="main">
							<h2>작가등록</h2>
							<form action="/admin/authorEnroll.do" method="post" id="enrollForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>작가 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input type="text" name="authorName">
                    				<span id="warn_authorName">작가 이름을 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>소속 국가</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="nationId">
                    					<option value="none" selected>=== 선택 ===</option>
                    					<option value="01">국내</option>
                    					<option value="02">국외</option>
                    				</select>
                    				<span id="warn_nationId">소속 국가를 선택해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>작가소개</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="authorIntro" type="text">
                    				<span id="warn_authorIntro">작가 소개를 입력 해주세요.</span>
                    			</div>
                    		</div>
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="enrollBtn" class="btn enroll_btn">등 록</button>
							</section>

					</div>

<%@include file="../includes/admin/footer.jsp" %>

		<!-- Scripts -->
		<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>
 
	/* 등록 버튼 */
	$("#enrollBtn").click(function(){  
		
		 /* 검사 통과 유무 변수 */
	    let nameCheck = false;            // 작가 이름
	    let nationCheck = false;        // 소속 국가
	    let introCheck = false;            // 작가 소개    
	 
	    /* 입력값 변수 */
	    let authorName = $('input[name=authorName]').val();        // 작가 이름
	    let nationId = $('select[name=nationId]').val();        // 소속 국가
	    let authorIntro = $('input[name=authorIntro]').val();    // 작가 소개
	    /* 공란 경고 span태그 */
	    let wAuthorName = $('#warn_authorName');
	    let wNationId = $('#warn_nationId');
	    let wAuthorIntro = $('#warn_authorIntro');  
	    /* 작기 이름 공란 체크 */
	    if(authorName ===''){
	        wAuthorName.css('display', 'block');
	        nameCheck = false;
	    } else{
	        wAuthorName.css('display', 'none');
	        nameCheck = true;
	    }
	    
	    /* 소속 국가 공란 체크 */
	    if(nationId ==='none'){
	        wNationId.css('display', 'block');
	        nationCheck = false;
	    } else{
	        wNationId.css('display', 'none');
	        nationCheck = true;
	    }    
	    
	    /* 작가 소개 공란 체크 */
	    if(authorIntro ===''){
	        wAuthorIntro.css('display', 'block');
	        introCheck = false;
	    } else{
	        wAuthorIntro.css('display', 'none');
	        introCheck = true;
	    }    
	    /* 최종 검사 */
	    if(nameCheck && nationCheck && introCheck){
	        $("#enrollForm").submit();    
	    } else{
	        return;
	    }
	});
 
	/* 취소 버튼 */
	$("#cancelBtn").click(function(){
    	location.href="/admin/authorManage"
	});
 
</script>
			<script src="${path}/resources/assets/js/jquery.min.js"></script>
			<script src="${path}/resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="${path}/resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="${path}/resources/assets/js/browser.min.js"></script>
			<script src="${path}/resources/assets/js/breakpoints.min.js"></script>
			<script src="${path}/resources/assets/js/util.js"></script>
			<script src="${path}/resources/assets/js/main.js"></script>

	</body>
</html>