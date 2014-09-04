
<%@ page import="personalfinance.accounts.MobilePhone" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'mobilePhone.label', default: 'MobilePhone')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-mobilePhone" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="spentTotal" title="${message(code: 'mobilePhone.spentTotal.label', default: 'Spent Total')}" />
			
				<g:sortableColumn property="formPayment" title="${message(code: 'mobilePhone.formPayment.label', default: 'Form Payment')}" />
			
				<g:sortableColumn property="reasonExpense" title="${message(code: 'mobilePhone.reasonExpense.label', default: 'Reason Expense')}" />
			
				<g:sortableColumn property="dueDate" title="${message(code: 'mobilePhone.dueDate.label', default: 'Due Date')}" />
			
				<g:sortableColumn property="paymentDate" title="${message(code: 'mobilePhone.paymentDate.label', default: 'Payment Date')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${mobilePhoneInstanceList}" status="i" var="mobilePhoneInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${mobilePhoneInstance.id}">${fieldValue(bean: mobilePhoneInstance, field: "spentTotal")}</g:link></td>
			
				<td>${fieldValue(bean: mobilePhoneInstance, field: "formPayment")}</td>
			
				<td>${fieldValue(bean: mobilePhoneInstance, field: "reasonExpense")}</td>
			
				<td><g:formatDate date="${mobilePhoneInstance.dueDate}" /></td>
			
				<td><g:formatDate date="${mobilePhoneInstance.paymentDate}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${mobilePhoneInstanceTotal}" />
	</div>
</section>

</body>

</html>
