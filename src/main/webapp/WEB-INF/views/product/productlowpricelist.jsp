<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 리스트</title>
</head>
<body>
<fieldset>

<div style="float: right;">
	&nbsp;<button type="button" value="button"onclick="location.href='./logout'">로그아웃</button>
	</div>
	<div style="float: right; margin-top: 2px">${m_id}님 환영 합니다.</div>

	
	<input type="button" value="MY PAGE" style="float: left; width: 70pt; height: 20pt; margin-right: 10px"  onclick="location.href='./mypage'"> 
	<input type="button" value="내 장바구니" style="float: left; width: 70pt; height: 20pt; margin-right: 10px" onclick="location.href='./basketList'">
	<input type="button" value="QnA 게시판" style="float: left; width: 70pt; height: 20pt; " onclick="location.href='./qlistAll'"> &nbsp;
	
	
</fieldset>
	<h2 align="center">상품 리스트</h2>
	<div align="center">
	<form action="./psearch" method="post">
			<input type="search" name="keyword" placeholder= "검색어 입력">
			<input type="submit" value="검색">
	</form>
	</div>
	<div>	
	   <a href="./read_count_select">인기순</a>|
	   <a href="./write_date_select">신상품순</a>|
	   <a href="./low_price_select">낮은가격순</a>|
	   <a href="./high_price_select">높은가격순</a>|
	</div>
	
	<div align="center">
	<table>
		<tr>
			<c:forEach var="list" items="${list}" begin="${startrow-1}" end="${endrow}">
				<td>
				<a href="./pdetail?goods_num=${list.goods_num}">
				<img src="./resources/img/${list.image}" width="250px" height="250px">
				</a>
				</td>
			</c:forEach>
		</tr>
		<tr>
			<c:forEach var="list" items="${list}" begin="${startrow-1}" end="${endrow}">
				<td align="center">
				${list.goods_name}
				</td>
			</c:forEach>
		</tr>
		<tr>
			<c:forEach var="list" items="${list}" begin="${startrow-1}" end="${endrow}">
				<td align="center">
				${list.price}원
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
			<a href="./low_price_select?page=${page-1}">이전</a>
		</c:otherwise>
		</c:choose>
	</td>
	<td align="right" width="700px">
		<c:choose>
		<c:when test="${page >= maxpage}">다음</c:when>
		<c:otherwise>
			<a href="./low_price_select?page=${page+1}">다음</a>
		</c:otherwise>
	</c:choose>
	</td>
	</tr>
	</table>
						<c:if test="${m_id eq 'admin'}">
                         <fieldset>
							<input type="button" value="상품 추가"style="float: right; width: 70pt; height: 20pt;" onclick="location.href='./pinsert'"> 
							<input type="button" value="관리자 회원관리" style="float: right; width: 100pt; height: 20pt; margin-right: 10px"onclick="location.href='./adminMember'">
						</fieldset>
					</c:if>
</body>
</html>