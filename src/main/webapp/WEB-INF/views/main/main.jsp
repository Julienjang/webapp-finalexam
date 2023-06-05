<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Member Information</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<h3>MEMBER_INFO 테이블에서 MEMBER_CODE를 이용하여 강사 정보 조회하기</h3>
<form action="member/select">
    <label>조회할 강사코드 : </label>
    <input type="text" name="memberCode" id="memberCode">
    <button type="submit">조회하기</button>
</form>

<h3>MEMBER_INFO 테이블에서 강사 전체 정보 조회 (활동 중인 강사만 조회할 것) : /member/list (get)</h3>
<button onclick="location.href='${pageContext.servletContext.contextPath}/member/list'">강사정보 전체 조회하기</button>

<h3>MEMBER_INFO 테이블에서 신규 강사 정보 추가 (필요한 정보를 입력받을 수 있는 form을 만들어서 추가할 것) : /member/insert (post)</h3>
<form action="${ pageContext.servletContext.contextPath }/member/insert" method="post">
    강사이름 : <input type="text" name="memberName"><br>
    생년월일 : <input type="text" name="launchDate"><br>
    구분코드 : <input type="text" name="divisionCode"><br>
    과목정보 : <input type="text" name="detailInfo"><br>
    수강생 : <input type="text" name="studentQuantity"><br>
    연락처 : <input type="tel" name="contact"><br>
    소속코드 : <input type="text" name="teamCode"><br>
    활동상태 : <input type="text" name="activeStatus"><br>
    <button type="submit">등록하기</button>
</form>

<h3>MEMBER_INFO 테이블에서 강사 정보 수정 (강사코드와 변경할 정보를 입력 받아 강사코드와 일치하는 강사의 정보 변경 - 원하는 데이터 변경) : /member/update (post)</h3>
<form action="${ pageContext.servletContext.contextPath }/member/update" method="post">
    강사코드 : <input type="text" name="memberCode"><br>
    활동상태 변경 : <input type="text" name="activeStatus"><br>
    <button type="submit">강사정보 수정</button>
</form>

<h3>MEMBER_INFO 테이블에서 강사 정보 삭제 (강사코드 입력 받아 강사코드와 일치하는 행 삭제) : /member/delete (post)</h3>
<form action="${ pageContext.servletContext.contextPath }/member/delete" method="post">
    강사코드 : <input type="text" name="memberCode"><br>
    <button type="submit">강사 정보 삭제</button>
</form>
</body>
</html>
