<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Member Information</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        body {
            padding-top: 20px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }
        .container {
            margin-top: 20px;
        }
        h1, h3 {
            margin-bottom: 20px;
            color: #343a40;
        }
        form {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="container">
    <h1>강사 정보</h1>
    <h3>MEMBER_INFO 테이블에서 MEMBER_CODE를 이용하여 강사 정보 조회하기</h3>
<form action="member/select">
    <div class="form-group">
        <label for="memberCode">조회할 강사코드:</label>
        <input type="text" class="form-control" name="memberCode" id="memberCode" placeholder="강사 코드 입력">
    </div>
    <button type="submit" class="btn btn-primary ml-2">조회하기</button>
</form>

    <h3>MEMBER_INFO 테이블에서 강사 전체 정보 조회 (활동 중인 강사만 조회할 것) : /member/list (get)</h3>
    <button onclick="location.href='${pageContext.servletContext.contextPath}/member/list'" class="btn btn-primary">강사정보 전체 조회하기</button>

<h3>MEMBER_INFO 테이블에서 신규 강사 정보 추가 (필요한 정보를 입력받을 수 있는 form을 만들어서 추가할 것) : /member/insert (post)</h3>
    <form id="memberInsertForm">
        <div class="form-group">
            <label for="memberName">강사이름:</label>
            <input type="text" class="form-control" name="memberName" id="memberName" placeholder="강사 이름 입력">
        </div>
        <div class="form-group">
            <label for="launchDate">런칭년도:</label>
            <input type="text" class="form-control" name="launchDate" id="launchDate" placeholder="런칭 년도 입력">
        </div>
        <div class="form-group">
            <label for="divisionCode">구분코드:</label>
            <input type="text" class="form-control" name="divisionCode" id="divisionCode" placeholder="구분 코드 입력">
        </div>
        <div class="form-group">
            <label for="detailInfo">과목정보:</label>
            <input type="text" class="form-control" name="detailInfo" id="detailInfo" placeholder="과목 정보 입력">
        </div>
        <div class="form-group">
            <label for="studentQuantity">수강생:</label>
            <input type="text" class="form-control" name="studentQuantity" id="studentQuantity" placeholder="수강생 수 입력">
        </div>
        <div class="form-group">
            <label for="contact">연락처:</label>
            <input type="tel" class="form-control" name="contact" id="contact" placeholder="연락처 입력">
        </div>
        <div class="form-group">
            <label for="teamCode">소속코드:</label>
            <input type="text" class="form-control" name="teamCode" id="teamCode" placeholder="소속 코드 입력">
        </div>
        <div class="form-group">
            <label for="activeStatus">활동상태:</label>
            <input type="text" class="form-control" name="activeStatus" id="activeStatus" placeholder="활동 상태 입력">
        </div>
        <button type="button" id="submitBtn" class="btn btn-primary">등록하기</button>
    </form>

<script>
    $("#submitBtn").click(function() {
        $.ajax({
            url: "${ pageContext.servletContext.contextPath }/member/insert",
            type: 'POST',
            data: $("#memberInsertForm").serialize(),
            success: function(data) {
                if(data.result === "success") {
                    alert("성공적으로 등록되었습니다.");
                } else {
                    alert(data.message);
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert("오류가 발생했습니다: " + textStatus);
            }
        });
    });
</script>

    <h3>MEMBER_INFO 테이블에서 강사 정보 수정 (강사코드와 변경할 정보를 입력 받아 강사코드와 일치하는 강사의 정보 변경 - 원하는 데이터 변경) : /member/update (post)</h3>
    <form action="${ pageContext.servletContext.contextPath }/member/update" method="post">
        <div class="form-group">
            <label for="memberCodeUpdate">수정할 강사코드:</label>
            <input type="text" class="form-control" name="memberCode" id="memberCodeUpdate" placeholder="수정할 강사 코드 입력">
        </div>
        <div class="form-group">
            <label for="memberNameUpdate">강사이름:</label>
            <input type="text" class="form-control" name="memberName" id="memberNameUpdate" placeholder="강사 이름 입력">
        </div>
        <div class="form-group">
            <label for="launchDateUpdate">런칭년도:</label>
            <input type="text" class="form-control" name="launchDate" id="launchDateUpdate" placeholder="런칭 년도 입력">
        </div>
        <div class="form-group">
            <label for="divisionCodeUpdate">구분코드:</label>
            <input type="text" class="form-control" name="divisionCode" id="divisionCodeUpdate" placeholder="구분 코드 입력">
        </div>
        <div class="form-group">
            <label for="detailInfoUpdate">과목정보:</label>
            <input type="text" class="form-control" name="detailInfo" id="detailInfoUpdate" placeholder="과목 정보 입력">
        </div>
        <div class="form-group">
            <label for="studentQuantityUpdate">수강생:</label>
            <input type="text" class="form-control" name="studentQuantity" id="studentQuantityUpdate" placeholder="수강생 수 입력">
        </div>
        <div class="form-group">
            <label for="contactUpdate">연락처:</label>
            <input type="tel" class="form-control" name="contact" id="contactUpdate" placeholder="연락처 입력">
        </div>
        <div class="form-group">
            <label for="teamCodeUpdate">소속코드:</label>
            <input type="text" class="form-control" name="teamCode" id="teamCodeUpdate" placeholder="소속 코드 입력">
        </div>
        <div class="form-group">
            <label for="activeStatusUpdate">활동상태:</label>
            <input type="text" class="form-control" name="activeStatus" id="activeStatusUpdate" placeholder="활동 상태 입력">
        </div>
        <button type="submit" class="btn btn-primary">강사정보 수정</button>
    </form>

    <h3>MEMBER_INFO 테이블에서 강사 정보 삭제 (강사코드 입력 받아 강사코드와 일치하는 행 삭제) : /member/delete (post)</h3>
<form action="${ pageContext.servletContext.contextPath }/member/delete" method="post">
    <div class="form-group">
        <label for="memberCodeDelete">강사코드:</label>
        <input type="text" class="form-control" name="memberCode" id="memberCodeDelete" placeholder="강사 코드 입력">
    </div>
    <button type="submit" class="btn btn-danger">강사 정보 삭제</button>
</form>
</div>
</body>
</html>
