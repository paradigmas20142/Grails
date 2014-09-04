
<%@ page import="personalfinance.user.Person" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
	<title>List Person</title>
</head>

<body>
	
<section id="list-person" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'person.username.label', default: 'Username')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'person.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="salary" title="${message(code: 'person.salary.label', default: 'Salary')}" />
			
				<g:sortableColumn property="phone" title="${message(code: 'person.phone.label', default: 'Phone')}" />
			
				<g:sortableColumn property="address" title="${message(code: 'person.address.label', default: 'Address')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${personInstanceList}" status="i" var="personInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "username")}</g:link></td>
			
				<td>${fieldValue(bean: personInstance, field: "name")}</td>			

				<td>${fieldValue(bean: personInstance, field: "salary")}</td>

				<td>${fieldValue(bean: personInstance, field: "phone")}</td>

				<td>${fieldValue(bean: personInstance, field: "address")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${personInstanceTotal}" />
	</div>
</section>

</body>

</html>
