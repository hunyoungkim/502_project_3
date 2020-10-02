<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 검색</title>
</head>
<body>
<fieldset>
<div style="float: right;">
	&nbsp;<button type="button" value="button"onclick="location.href='./logout'">로그아웃</button>
	</div>
	<div style="float: right; margin-top: 2px">${m_id}님 환영 합니다.</div>

	
	<input type="button" value="MY PAGE" style="float: left; width: 70pt; height: 20pt; margin-right: 10px"  onclick="location.href='./mypage'"> 
	<input type="button" value="내 장바구니" style="float: left; width: 70pt; height: 20pt; margin-right: 10px" onclick="location.href='./basketList'">
	<input type="button" value="QnA 게시판" style="float: left; width: 70pt; height: 20pt; " onclick="location.href='./BoardList.qa'"> &nbsp;
	
	
</fieldset>


	<h2 align="center">상품 검색</h2>
	
	<div align="center">
	<table>
		<tr>
			<c:forEach var="search" items="${search}">
				<td>
				<a href="./pdetail?goods_num=${search.goods_num}">
				<img src="./resources/img/${search.image}" width="250px" height="250px">
				</a>
				</td>
			</c:forEach>
		</tr>
		<tr>
			<c:forEach var="search" items="${search}">
				<td align="center">${search.goods_name}</td>
			</c:forEach>
		</tr>
		<tr>
			<c:forEach var="search" items="${search}">
				<td align="center">
				${search.price}원
				</td>
			</c:forEach>
		</tr>
	</table>
	</div>
	<table>
	<tr>
	<td align="left" width="700px">
		<c:choose>
		<c:when test="${page <= 1}">이전</c:when> 
		<c:otherwise>
			<a href="./psearch?page=${page-1}">이전</a>
		</c:otherwise>
		</c:choose>
	</td>
	<td align="right" width="700px">
		<c:choose>
		<c:when test="${page >= maxpage}">다음</c:when>
		<c:otherwise>
			<a href="./psearch?page=${page+1}">다음</a>
		</c:otherwise>
	</c:choose>
	</td>
	</tr>
	</table>
</body>
</html>