<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="employee" scope="request" type="ua.java.spring.mvc.Employee"/>

<!DOCTYPE>
<html>
<body>
<h2>Dear employee, you are welcome!</h2>
<br>
<br>
<br>
<br>
<%--Your name: ${param.employeeName}--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Your language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>${lang}</li>
    </c:forEach>
</ul>
Phone number: ${employee.phoneNumber}
<br>
Email: ${employee.email}
</body>
</html>