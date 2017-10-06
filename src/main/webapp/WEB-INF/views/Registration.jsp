<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="get" action="Registration.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>ID</td>
                        <td><input type="text" name="id" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td>Contact</td>
                        <td><input type="password" name="contact" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="Login.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
<h2>Please fill the details</h2>
     <!--  Before comming to this page, you have to add  userDetails in ModelAndView object-->
	<form:form action="Registration" method="post" commandName="user">
		<table>
			<tr>
				<td>UserID<form:label path="id">
						<spring:message text="ID" />
					</form:label></td>

				<td><form:input path="id" pattern=".{4,15}" required="true"
				        placeholder ="enter your id"
						title="id should contains 4 to 15 characters" /></td>
			</tr>
			<tr>
				<td>Name<form:label path="name">
						<spring:message text="User Name" />
					</form:label></td>

				<td><form:input path="name" required="true"
				placeholder ="enter your id" minlength="5" maxlenth="15"
						title="name should not be empty" /></td>
			</tr>
			<tr>
				<td>password<form:label path="password">
						<spring:message text="Password" />
					</form:label></td>

				<td><form:input type="password" path="password" pattern=".{4,15}"
						required="true" placeholder="enter you password"
						title="password should contains 4 to 15 characters" /></td>
			</tr>
			<tr>
				<td>Contact<form:label path="contact">
						<spring:message text="contact" />
					</form:label></td>

				<td><form:input type="tel" path="contact" pattern="^\d{10}$" required="true"
						title="Please enter valid contact number" /></td>
			</tr>

			<tr>
				<td> EMail :

				<td><form:input type="email" path="Email" /></td>
			</tr>

		
			<tr>

				<td><input type="submit"
					value="Submit"Register"/></td>
				<td><input type="reset" value="RESET"Reset"/>
				</td>
			</tr>

		</table>

	</form:form>

 
 
 
 
 




</body>
</html> --%>