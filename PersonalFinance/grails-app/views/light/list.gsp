
<%@ page import="personalfinance.accounts.Light" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'light.label', default: 'Light')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-light" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="spentTotal" title="${message(code: 'light.spentTotal.label', default: 'Spent Total')}" />
			
				<g:sortableColumn property="formPayment" title="${message(code: 'light.formPayment.label', default: 'Form Payment')}" />
			
				<g:sortableColumn property="reasonExpense" title="${message(code: 'light.reasonExpense.label', default: 'Reason Expense')}" />
			
				<g:sortableColumn property="dueDate" title="${message(code: 'light.dueDate.label', default: 'Due Date')}" />
			
				<g:sortableColumn property="paymentDate" title="${message(code: 'light.paymentDate.label', default: 'Payment Date')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${lightInstanceList}" status="i" var="lightInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${lightInstance.id}">${fieldValue(bean: lightInstance, field: "spentTotal")}</g:link></td>
			
				<td>${fieldValue(bean: lightInstance, field: "formPayment")}</td>
			
				<td>${fieldValue(bean: lightInstance, field: "reasonExpense")}</td>
			
				<td><g:formatDate date="${lightInstance.dueDate}" /></td>
			
				<td><g:formatDate date="${lightInstance.paymentDate}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${lightInstanceTotal}" />
	</div>
</section>

</body>

</html>
