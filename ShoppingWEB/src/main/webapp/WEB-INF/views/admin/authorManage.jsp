<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML>
<html>
<%@include file="../includes/admin/header.jsp" %>
				<!-- Main -->
					<div id="main">

						<!-- Content -->
							<section id="content" class="main">
							<h2>작가관리</h2>
							<div class="author_table_wrap">
                    	<table class="author_table">
                    		<thead>
                    			<tr>
                    				<td class="th_column_1">작가 번호</td>
                    				<td class="th_column_2">작가 이름</td>
                    				<td class="th_column_3">작가 국가</td>
                    				<td class="th_column_4">등록 날짜</td>
                    				<td class="th_column_5">수정 날짜</td>
                    			</tr>
                    		</thead>
                    		<c:forEach items="${list}" var="list">
                    		<tr>
                    			<td><c:out value="${list.authorId}"></c:out> </td>
                    			<td><c:out value="${list.authorName}"></c:out></td>
                    			<td><c:out value="${list.nationName}"></c:out> </td>
                    			<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
                    			<td><fmt:formatDate value="${list.updateDate}" pattern="yyyy-MM-dd"/></td>
                    		</tr>
                    		</c:forEach>
                    	</table>                			
                    </div>
                                       <div class="pageMaker_wrap" >
	                    <ul class="pageMaker">
	                    
	                    	<!-- 이전 버튼 -->
	                    	<c:if test="${pageMaker.prev}">
	                    		<li class="pageMaker_btn prev">
	                    			<a href="${pageMaker.pageStart - 1}">이전</a>
	                    		</li>
	                    	</c:if>
	                    	
	                    	<!-- 페이지 번호 -->
	                    	<c:forEach begin="${pageMaker.pageStart}" end="${pageMaker.pageEnd}" var="num">
	                    		<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? "active":""}">
	                    			<a href="${num}">${num}</a>
	                    		</li>
	                    	</c:forEach>
	                    	
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${pageMaker.pageEnd + 1 }">다음</a>
	                    		</li>
	                    	</c:if>
	                    	
	                    </ul>
	                    
                    </div>  
                    <form id="moveForm" action="/admin/authorManage" method="get">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
					</form>                  
                </div>
			
							</section>

					</div>

<%@include file="../includes/admin/footer.jsp" %>

		<!-- Scripts -->		
		<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>
		$(document).ready(function(){
		    
		    let result = '<c:out value="${enroll_result}"/>';
		    
		    checkResult(result);
		    
		    function checkResult(result){
		        
		        if(result === ''){
		            return;
		        }
		        
		        alert("작가'${enroll_result}' 을 등록하였습니다.");
		        
		    }
		 
		});
		
		let moveForm = $('#moveForm');
		 
		/* 페이지 이동 버튼 */
		$(".pageMaker_btn a").on("click", function(e){
		    
		    e.preventDefault();
		    
		    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		    
		    moveForm.submit();
		})
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