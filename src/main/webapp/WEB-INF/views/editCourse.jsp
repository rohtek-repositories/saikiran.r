<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<jsp:include page="boot.jsp"></jsp:include>
<div class="container">
<section>
<h3 align="center">View Course</h3>
<c:if test="${empty Course}">
<b>No Data Found</b>
</c:if>
<c:if test="${not empty Course}">
<table border="1" >
<th>
Course ID
</th>
<th>
Course Name
</th>
<th>
Course Type
</th>
<th>
Course description
</th>
<th>
Course status
</th>
<th>
Date 
</th>
<th>
Update
</th>
<th>
Delete
</th>


			<c:forEach var="listValue" items="${Course}">
			<%-- 	<li>
				${listValue.cId}
				${listValue.courseName}
				${listValue.courseType}
				${listValue.courseDescription}
				${listValue.cStatus}
				${listValue.createdDate}</li> --%>
				
</tr>
   <form:form modelAttribute="Course" action="updateCourse" >
<td><input type="text" name="cId" value="<c:out value="${listValue.cId}"/>" readonly="readonly"/></td>
<td><input type="text" name="courseName" value="<c:out value="${listValue.courseName}"/>" /></td>
<td><input type="text" name="courseType"  value="<c:out value="${listValue.courseType}"/>" /></td>
<td><input type="text" name="courseDescription" value="<c:out value="${listValue.courseDescription}"/>" /></td>
<td><input type="text" name="cStatus" value="<c:out value="${listValue.cStatus}"/>" /></td>
<td><input type="text" name="updatedDate" value="<c:out value="${listValue.updatedDate}"/>" /></td>
<td><button type="submit">UPDATE</button></td></form:form>
<td><a href="<c:url value='deleteCourse/${listValue.cId}'/>"><button>DELETE</button></a></td>
    


			</c:forEach>
			</table> 
	

	</c:if>
	<a href="admin">Home</a>
	</section>
	</div>
</body>
</html>