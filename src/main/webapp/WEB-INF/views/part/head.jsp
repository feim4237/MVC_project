<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringFramework 사이트-${pageName}</title>
<link rel="stylesheet" href="/resource/common.css">

<!-- 제이쿼리 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js" ></script>
<script src="/resource/common.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" />

<Script>
var param = ${paramJson};
</Script>

</head>
<body>
	<h1 class="con">${pageName}</h1>
	<div class="menu-bar con">
		<c:if test="${isLogined}">
			<span>${loginedMember.name}님 환영합니다.</span>
			<a href="/member/doLogout">로그아웃</a>
		</c:if>
		<c:if test="${isLogined == false}">
			<a href="/member/login">로그인</a>
			<a href="/member/join">회원가입</a>
		</c:if>
		<a href="/article/list?boardCode=notice">공지사항</a> <a
			href="/article/list?boardCode=free">자유게시판</a> <a
			href="/article/write?boardCode=notice">공지사항 게시글 추가</a> <a
			href="/article/write?boardCode=free">자유게시판 게시글 추가</a>
	</div>
	<main>