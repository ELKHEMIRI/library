<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
<title>Library : books managing</title>

<spring:url value="/hello.css" var="coreCss" />
<spring:url value="bootstrap.min.css"
	var="bootstrapCss"/>
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>

<spring:url value="/" var="urlHome" />
<spring:url value="/book/add" var="urlAddBook" />

<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="${urlHome}">Library : Managing your books</a>
		</div>
		<div id="navbar">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="${urlAddBook}">Add Book</a></li>
			</ul>
		</div>
	</div>
</nav>