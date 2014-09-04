
<%@ page import="personalfinance.Book" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-book" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.education.label" default="Education" /></td>
				
				<td valign="top" class="value"><g:link controller="education" action="show" id="${bookInstance?.education?.id}">${bookInstance?.education?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.price.label" default="Price" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "price")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.publisher.label" default="Publisher" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "publisher")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
