<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="header.jsp" />
<head>
    <spring:url value="/hello.css" var="coreCss" />
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Library : Books management</title>
    <link rel="stylesheet"
          href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>

<body>

<div class="container">

    <h1>Available Books</h1>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Publisher</th>
        </tr>
        </thead>

        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.publisher}</td>

                <td>
                    <spring:url value="/books/${book.id}" var="bookUrl" />

                    <button class="btn btn-info"
                            onclick="location.href='${bookUrl}'">Details</button>
                </td>

                <td>
                    <spring:url value="/books/${book.id}/update" var="updateUrl" />

                    <button class="btn btn-primary"
                            onclick="location.href='${updateUrl}'">Update</button>
                </td>

                <td>
                    <spring:url value="/books/${book.id}/delete" var="deleteUrl" />

                    <button class="btn btn-danger"
                            onclick="this.disabled=true;location.href='${deleteUrl}'">Delete</button>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>