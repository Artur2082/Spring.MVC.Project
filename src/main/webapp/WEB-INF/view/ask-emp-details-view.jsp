<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE>
<html>
<body>
<h2>Hello! Please enter your details</h2>
<br>
<br>
<%--@elvariable id="employee" type="jakarta"--%>
<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    SurName <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    Department<form:select path="department">
    <%--    <form:option value="Information Technology" label="IT"/>--%>
    <%--    <form:option value="Human Resourses" label="HR"/>--%>
    <%--    <form:option value="Sales" label="SALES"/>--%>
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>
    Which car do you want ?
    BMW <form:radiobutton path="carBrand" value="BMW"/>
    Ford <form:radiobutton path="carBrand" value="Ford"/>
    MB <form:radiobutton path="carBrand" value="MB"/>
    <br><br>
    Foreign language(s)
    EN<form:checkbox path="languages" value="english"/>
    FR<form:checkbox path="languages" value="french"/>
    DE<form:checkbox path="languages" value="german"/>
    <br><br>
    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>
    <input type="submit" value="Ok">
</form:form>
</body>
</html>