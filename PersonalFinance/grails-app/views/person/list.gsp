
<%@ page import="personalfinance.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-person" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="person.user.label" default="User" /></th>
					
						<g:sortableColumn property="adress" title="${message(code: 'person.adress.label', default: 'Adress')}" />
					
						<g:sortableColumn property="financeSit" title="${message(code: 'person.financeSit.label', default: 'Finance Sit')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'person.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="number" title="${message(code: 'person.number.label', default: 'Number')}" />
					
						<g:sortableColumn property="salary" title="${message(code: 'person.salary.label', default: 'Salary')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personInstanceList}" status="i" var="personInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "user")}</g:link></td>
					
						<td>${fieldValue(bean: personInstance, field: "adress")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "financeSit")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "number")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "salary")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
