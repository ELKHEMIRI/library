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

    <c:choose>
        <c:when test="${bookForm['new']}">
            <h1>Add Book</h1>
        </c:when>
        <c:otherwise>
            <h1>Update Book</h1>
        </c:otherwise>
    </c:choose>
    <br />

    <spring:url value="/books" var="bookActionUrl" />

    <form:form class="form-horizontal" method="post"
               modelAttribute="bookForm" action="${bookActionUrl}">

        <form:hidden path="id" />

        <spring:bind path="title">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Title</label>
                <div class="col-sm-10">
                    <form:input path="title" type="text" class="form-control"
                                id="title" />
                    <form:errors path="title" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="author">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Author</label>
                <div class="col-sm-10">
                    <form:input path="author" class="form-control"
                                id="author"/>
                    <form:errors path="author" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="publisher">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Publisher</label>
                <div class="col-sm-10">
                    <form:input path="publisher" class="form-control"
                                id="publisher"/>
                    <form:errors path="publisher" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="category">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Category</label>
                <div class="col-sm-10">
                    <form:input path="category" class="form-control"
                                id="category"/>
                    <form:errors path="category" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <spring:bind path="summary">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label class="col-sm-2 control-label">Summary</label>
                <div class="col-sm-10">
                    <form:textarea path="summary" rows="5" class="form-control"
                                   id="summary" />
                    <form:errors path="summary" class="control-label" />
                </div>
            </div>
        </spring:bind>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <c:choose>
                    <c:when test="${bookForm['new']}">
                        <button type="submit" class="btn-lg btn-primary pull-right">Add
                        </button>
                    </c:when>
                    <c:otherwise>
                        <button type="submit" class="btn-lg btn-primary pull-right">Update
                        </button>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </form:form>

</div>

</body>
</html>