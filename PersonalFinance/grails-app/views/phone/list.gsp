
<%@ page import="personalfinance.accounts.Phone" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'phone.label', default: 'Phone')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-phone" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="spentTotal" title="${message(code: 'phone.spentTotal.label', default: 'Spent Total')}" />
			
				<g:sortableColumn property="dueDate" title="${message(code: 'phone.dueDate.label', default: 'Due Date')}" />
			
				<g:sortableColumn property="formPayment" title="${message(code: 'phone.formPayment.label', default: 'Form Payment')}" />
			
				<g:sortableColumn property="paymentDate" title="${message(code: 'phone.paymentDate.label', default: 'Payment Date')}" />
			
				<g:sortableColumn property="reasonExpense" title="${message(code: 'phone.reasonExpense.label', default: 'Reason Expense')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${phoneInstanceList}" status="i" var="phoneInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${phoneInstance.id}">${fieldValue(bean: phoneInstance, field: "spentTotal")}</g:link></td>
			
				<td><g:formatDate date="${phoneInstance.dueDate}" /></td>
			
				<td>${fieldValue(bean: phoneInstance, field: "formPayment")}</td>
			
				<td><g:formatDate date="${phoneInstance.paymentDate}" /></td>
			
				<td>${fieldValue(bean: phoneInstance, field: "reasonExpense")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${phoneInstanceTotal}" />
	</div>
</section>

</body>

</html>
