<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Student Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
 First Name : <form:input type="text" path="firstName" />
		<br />
		<br />
 Last Name : <form:input type="text" path="lastName" />
		<br />
		<br />
		<form:select path="country">
			<%-- 			<form:option value="Brazil" label="Brazil"></form:option> --%>
			<%-- 			<form:option value="Germany" label="Germany"></form:option> --%>
			<%-- 			<form:option value="India" label="India"></form:option> --%>
			<%-- 			<form:option value="Australia" label="Australia"></form:option> --%>
			<form:options items="${student.countryOptions}"></form:options>
		</form:select>
		<br>
		<br>
		Favourite Language:
		<br>
		<br>
		        Java: <form:radiobutton path="favouriteLanguage" value="Java" />
				C++: <form:radiobutton path="favouriteLanguage" value="C++" />
				PHP: <form:radiobutton path="favouriteLanguage" value="PHP" />
				Ruby: <form:radiobutton path="favouriteLanguage" value="Ruby" />
		<br>
		<br>
		Operating Systems:
		Linux: <form:checkbox path="operatingSystems" value="Linux" />	
				MacOs: <form:checkbox path="operatingSystems" value="MacOs" />		
				Windows: <form:checkbox path="operatingSystems" value="Windows" />		
				Red Hat: <form:checkbox path="operatingSystems" value="Red Hat" />
		<br>
		<br>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>