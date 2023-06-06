<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/views/common/header.jsp"/>

강사코드 : ${ requestScope.selectedMember.memberCode }<br>
강사이름 : ${ requestScope.selectedMember.memberName }<br>
런칭년도 : ${ requestScope.selectedMember.launchDate }<br>
구분코드 : ${ requestScope.selectedMember.divisionCode }<br>
과목정보 : ${ requestScope.selectedMember.detailInfo }<br>
수강생 : ${ requestScope.selectedMember.studentQuantity }<br>
연락처 : ${ requestScope.selectedMember.contact }<br>
소속코드 : ${ requestScope.selectedMember.teamCode }<br>
활동상태 : ${ requestScope.selectedMember.activeStatus }<br>
</body>
</html>
