<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<div class="container">

    <h1>Book Detail</h1>
    <br />

    <div class="row">
        <label class="col-sm-2">ID</label>
        <div class="col-sm-10">${book.id}</div>
    </div>

    <div class="row">
        <label class="col-sm-2">Title</label>
        <div class="col-sm-10">${book.title}</div>
    </div>

    <div class="row">
        <label class="col-sm-2">Author</label>
        <div class="col-sm-10">${book.author}</div>
    </div>

    <div class="row">
        <label class="col-sm-2">Publisher</label>
        <div class="col-sm-10">${book.publisher}</div>
    </div>

    <div class="row">
        <label class="col-sm-2">Category</label>
        <div class="col-sm-10">${book.category}</div>
    </div>

    <div class="row">
        <label class="col-sm-2">Summary</label>
        <div class="col-sm-10">${book.summary}</div>
    </div>
</div>

</body>
</html>