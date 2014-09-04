
<%@ page import="personalfinance.Education" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
	<title>Show Education</title>
</head>

<body>

<section id="show-education" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="education.spentTotal.label" default="Spent Total" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: educationInstance, field: "spentTotal")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="education.spentTuition.label" default="Spent Tuition" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: educationInstance, field: "spentTuition")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="education.book.label" default="Book" /></td>
				
				<td valign="top" class="value"><g:link controller="book" action="show" id="${educationInstance?.book?.id}">${educationInstance?.book?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="education.formPayment.label" default="Form Payment" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: educationInstance, field: "formPayment")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="education.reasonExpense.label" default="Reason Expense" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: educationInstance, field: "reasonExpense")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="education.typeOfEducation.label" default="Type Of Education" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: educationInstance, field: "typeOfEducation")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="education.typeOfInstitution.label" default="Type Of Institution" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: educationInstance, field: "typeOfInstitution")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
