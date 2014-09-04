
<%@ page import="personalfinance.leisure.Theater" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'theater.label', default: 'Theater')}" />
	<title>Show Theater</title>
</head>

<body>

<section id="show-theater" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="theater.spentTotal.label" default="Spent Total" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: theaterInstance, field: "spentTotal")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="theater.data.label" default="Data" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${theaterInstance?.data}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="theater.formPayment.label" default="Form Payment" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: theaterInstance, field: "formPayment")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="theater.place.label" default="Place" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: theaterInstance, field: "place")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="theater.reasonExpense.label" default="Reason Expense" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: theaterInstance, field: "reasonExpense")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
