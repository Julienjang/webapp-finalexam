<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 20px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }
        .card {
            margin-top: 20px;
        }
        h1 {
            margin-bottom: 20px;
            color: #343a40;
        }
    </style>
</head>
<body>
<jsp:include page="/views/common/header.jsp"/>

<div class="container">
    <h1>강사 정보</h1>
    <div class="card">
        <div class="card-body">
            강사코드 : ${ requestScope.selectedMember.memberCode }<br>
            강사이름 : ${ requestScope.selectedMember.memberName }<br>
            런칭년도 : ${ requestScope.selectedMember.launchDate }<br>
            구분코드 : ${ requestScope.selectedMember.divisionCode }<br>
            과목정보 : ${ requestScope.selectedMember.detailInfo }<br>
            수강생 : ${ requestScope.selectedMember.studentQuantity }<br>
            연락처 : ${ requestScope.selectedMember.contact }<br>
            소속코드 : ${ requestScope.selectedMember.teamCode }<br>
            활동상태 : ${ requestScope.selectedMember.activeStatus }<br>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>