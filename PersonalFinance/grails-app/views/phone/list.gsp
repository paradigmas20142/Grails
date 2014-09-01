
<%@ page import="personalfinance.accounts.Phone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phone.label', default: 'Phone')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-phone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-phone" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'phone.spentTotal.label', default: 'Spent Total')}" />
					
						<g:sortableColumn property="dueDate" title="${message(code: 'phone.dueDate.label', default: 'Due Date')}" />
					
						<g:sortableColumn property="formPayment" title="${message(code: 'phone.formPayment.label', default: 'Form Payment')}" />
					
						<g:sortableColumn property="reasonExpense" title="${message(code: 'phone.reasonExpense.label', default: 'Reason Expense')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${phoneInstanceList}" status="i" var="phoneInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${phoneInstance.id}">${fieldValue(bean: phoneInstance, field: "spentTotal")}</g:link></td>
					
						<td><g:formatDate date="${phoneInstance.dueDate}" /></td>
					
						<td>${fieldValue(bean: phoneInstance, field: "formPayment")}</td>
					
						<td>${fieldValue(bean: phoneInstance, field: "reasonExpense")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${phoneInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
