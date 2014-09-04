
<%@ page import="personalfinance.accounts.Water" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'water.label', default: 'Water')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-water" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="spentTotal" title="${message(code: 'water.spentTotal.label', default: 'Spent Total')}" />
			
				<g:sortableColumn property="dueDate" title="${message(code: 'water.dueDate.label', default: 'Due Date')}" />
			
				<g:sortableColumn property="formPayment" title="${message(code: 'water.formPayment.label', default: 'Form Payment')}" />
			
				<g:sortableColumn property="paymentDate" title="${message(code: 'water.paymentDate.label', default: 'Payment Date')}" />
			
				<g:sortableColumn property="reasonExpense" title="${message(code: 'water.reasonExpense.label', default: 'Reason Expense')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${waterInstanceList}" status="i" var="waterInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${waterInstance.id}">${fieldValue(bean: waterInstance, field: "spentTotal")}</g:link></td>
			
				<td><g:formatDate date="${waterInstance.dueDate}" /></td>
			
				<td>${fieldValue(bean: waterInstance, field: "formPayment")}</td>
			
				<td><g:formatDate date="${waterInstance.paymentDate}" /></td>
			
				<td>${fieldValue(bean: waterInstance, field: "reasonExpense")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${waterInstanceTotal}" />
	</div>
</section>

</body>

</html>
