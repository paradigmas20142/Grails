
<%@ page import="personalfinance.accounts.Internet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'internet.label', default: 'Internet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-internet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-internet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'internet.spentTotal.label', default: 'Spent Total')}" />
					
						<g:sortableColumn property="dueDate" title="${message(code: 'internet.dueDate.label', default: 'Due Date')}" />
					
						<g:sortableColumn property="formPayment" title="${message(code: 'internet.formPayment.label', default: 'Form Payment')}" />
					
						<g:sortableColumn property="reasonExpense" title="${message(code: 'internet.reasonExpense.label', default: 'Reason Expense')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${internetInstanceList}" status="i" var="internetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${internetInstance.id}">${fieldValue(bean: internetInstance, field: "spentTotal")}</g:link></td>
					
						<td><g:formatDate date="${internetInstance.dueDate}" /></td>
					
						<td>${fieldValue(bean: internetInstance, field: "formPayment")}</td>
					
						<td>${fieldValue(bean: internetInstance, field: "reasonExpense")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${internetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
