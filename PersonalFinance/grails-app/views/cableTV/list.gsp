
<%@ page import="personalfinance.accounts.CableTV" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'cableTV.label', default: 'CableTV')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-cableTV" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="spentTotal" title="${message(code: 'cableTV.spentTotal.label', default: 'Spent Total')}" />
			
				<g:sortableColumn property="dueDate" title="${message(code: 'cableTV.dueDate.label', default: 'Due Date')}" />
			
				<g:sortableColumn property="formPayment" title="${message(code: 'cableTV.formPayment.label', default: 'Form Payment')}" />
			
				<g:sortableColumn property="paymentDate" title="${message(code: 'cableTV.paymentDate.label', default: 'Payment Date')}" />
			
				<g:sortableColumn property="reasonExpense" title="${message(code: 'cableTV.reasonExpense.label', default: 'Reason Expense')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${cableTVInstanceList}" status="i" var="cableTVInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${cableTVInstance.id}">${fieldValue(bean: cableTVInstance, field: "spentTotal")}</g:link></td>
			
				<td><g:formatDate date="${cableTVInstance.dueDate}" /></td>
			
				<td>${fieldValue(bean: cableTVInstance, field: "formPayment")}</td>
			
				<td><g:formatDate date="${cableTVInstance.paymentDate}" /></td>
			
				<td>${fieldValue(bean: cableTVInstance, field: "reasonExpense")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${cableTVInstanceTotal}" />
	</div>
</section>

</body>

</html>
