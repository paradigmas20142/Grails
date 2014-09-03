
<%@ page import="personalfinance.Culture" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'culture.label', default: 'Culture')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-culture" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-culture" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'culture.spentTotal.label', default: 'Spent Total')}" />
					
						<g:sortableColumn property="spentMovie" title="${message(code: 'culture.spentMovie.label', default: 'Spent Movie')}" />
					
						<g:sortableColumn property="spentTheater" title="${message(code: 'culture.spentTheater.label', default: 'Spent Theater')}" />
					
						<th><g:message code="culture.book.label" default="Book" /></th>
					
						<g:sortableColumn property="formPayment" title="${message(code: 'culture.formPayment.label', default: 'Form Payment')}" />
					
						<g:sortableColumn property="reasonExpense" title="${message(code: 'culture.reasonExpense.label', default: 'Reason Expense')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cultureInstanceList}" status="i" var="cultureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cultureInstance.id}">${fieldValue(bean: cultureInstance, field: "spentTotal")}</g:link></td>
					
						<td>${fieldValue(bean: cultureInstance, field: "spentMovie")}</td>
					
						<td>${fieldValue(bean: cultureInstance, field: "spentTheater")}</td>
					
						<td>${fieldValue(bean: cultureInstance, field: "book")}</td>
					
						<td>${fieldValue(bean: cultureInstance, field: "formPayment")}</td>
					
						<td>${fieldValue(bean: cultureInstance, field: "reasonExpense")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cultureInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
