
<%@ page import="personalfinance.accounts.MobilePhone" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'mobilePhone.label', default: 'MobilePhone')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-mobilePhone" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="mobilePhone.spentTotal.label" default="Spent Total" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: mobilePhoneInstance, field: "spentTotal")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="mobilePhone.formPayment.label" default="Form Payment" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: mobilePhoneInstance, field: "formPayment")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="mobilePhone.reasonExpense.label" default="Reason Expense" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: mobilePhoneInstance, field: "reasonExpense")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="mobilePhone.dueDate.label" default="Due Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${mobilePhoneInstance?.dueDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="mobilePhone.paymentDate.label" default="Payment Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${mobilePhoneInstance?.paymentDate}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
