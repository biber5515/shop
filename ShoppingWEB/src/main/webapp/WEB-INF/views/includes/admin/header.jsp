<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

	<head>
		<title>관리자페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${path}/resources/assets/css/main.css" />
		<link rel="stylesheet" href="${path}/resources/assets/css/admin/main.css">
		<noscript><link rel="stylesheet" href="${path}/resources/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">
			            <div class="top_gnb_area">
                <ul class="list">    
                    <li><a href="/main">메인 페이지</a></li>
                    <li><a href="/member/logout.do">로그아웃</a></li>
                    <li>고객센터</li>            
                </ul>
            </div>
			

				<!-- Header -->
					<header id="header">
						<h1>관리자페이지</h1>
						<p></p>
					</header>
					<!-- Nav -->
		<nav id="nav">
			<ul>
			<li><a class="admin_list_01" href="/admin/goodsEnroll">상품 등록</a></li>
			<li><a class="admin_list_02" href="/admin/goodsManage">상품 목록</a></li>
			<li><a class="admin_list_03" href="/admin/authorEnroll">작가 등록</a></li>
				<li><a class="admin_list_04" href="/admin/authorManage">작가관리</a></li>
				<li><a class="admin_list_05">회원관리</a></li>
			</ul>
		</nav>