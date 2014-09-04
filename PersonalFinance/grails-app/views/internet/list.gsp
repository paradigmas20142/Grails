
<%@ page import="personalfinance.accounts.Internet" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'internet.label', default: 'Internet')}" />
	<title>List Internet</title>
</head>

<body>
	
<section id="list-internet" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="spentTotal" title="${message(code: 'internet.spentTotal.label', default: 'Spent Total')}" />
			
				<g:sortableColumn property="dueDate" title="${message(code: 'internet.dueDate.label', default: 'Due Date')}" />
			
				<g:sortableColumn property="formPayment" title="${message(code: 'internet.formPayment.label', default: 'Form Payment')}" />
			
				<g:sortableColumn property="paymentDate" title="${message(code: 'internet.paymentDate.label', default: 'Payment Date')}" />
			
				<g:sortableColumn property="reasonExpense" title="${message(code: 'internet.reasonExpense.label', default: 'Reason Expense')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${internetInstanceList}" status="i" var="internetInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${internetInstance.id}">${fieldValue(bean: internetInstance, field: "spentTotal")}</g:link></td>
			
				<td><g:formatDate date="${internetInstance.dueDate}" /></td>
			
				<td>${fieldValue(bean: internetInstance, field: "formPayment")}</td>
			
				<td><g:formatDate date="${internetInstance.paymentDate}" /></td>
			
				<td>${fieldValue(bean: internetInstance, field: "reasonExpense")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${internetInstanceTotal}" />
	</div>
</section>

</body>

</html>
