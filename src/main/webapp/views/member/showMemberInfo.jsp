<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

강사코드 : ${ requestScope.selectedMember.MEMBER_CODE }<br>
강사이름 : ${ requestScope.selectedMember.MEMBER_NAME }<br>
생년월일 : ${ requestScope.selectedMember.LAUNCH_DATE }<br>
구분코드 : ${ requestScope.selectedMember.DIVISION_CODE }<br>
과목정보 : ${ requestScope.selectedMember.DETAIL_INFO }<br>
수강생 : ${ requestScope.selectedMember.STUDENT_QUANTITY }<br>
연락처 : ${ requestScope.selectedMember.CONTACT }<br>
소속코드 : ${ requestScope.selectedMember.TEAM_CODE }<br>
활동상태 : ${ requestScope.selectedMember.ACTIVE_STATUS }<br>
</body>
</html>
