
<%@ page import="personalfinance.Book" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-book" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="book.education.label" default="Education" /></th>
			
				<g:sortableColumn property="name" title="${message(code: 'book.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="price" title="${message(code: 'book.price.label', default: 'Price')}" />
			
				<g:sortableColumn property="publisher" title="${message(code: 'book.publisher.label', default: 'Publisher')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${bookInstanceList}" status="i" var="bookInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "education")}</g:link></td>
			
				<td>${fieldValue(bean: bookInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: bookInstance, field: "price")}</td>
			
				<td>${fieldValue(bean: bookInstance, field: "publisher")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${bookInstanceTotal}" />
	</div>
</section>

</body>

</html>
