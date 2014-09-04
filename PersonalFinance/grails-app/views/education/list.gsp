
<%@ page import="personalfinance.Education" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-education" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="spentTotal" title="${message(code: 'education.spentTotal.label', default: 'Spent Total')}" />
			
				<g:sortableColumn property="spentTuition" title="${message(code: 'education.spentTuition.label', default: 'Spent Tuition')}" />
			
				<th><g:message code="education.book.label" default="Book" /></th>
			
				<g:sortableColumn property="formPayment" title="${message(code: 'education.formPayment.label', default: 'Form Payment')}" />
			
				<g:sortableColumn property="reasonExpense" title="${message(code: 'education.reasonExpense.label', default: 'Reason Expense')}" />
			
				<g:sortableColumn property="typeOfEducation" title="${message(code: 'education.typeOfEducation.label', default: 'Type Of Education')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${educationInstanceList}" status="i" var="educationInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${educationInstance.id}">${fieldValue(bean: educationInstance, field: "spentTotal")}</g:link></td>
			
				<td>${fieldValue(bean: educationInstance, field: "spentTuition")}</td>
			
				<td>${fieldValue(bean: educationInstance, field: "book")}</td>
			
				<td>${fieldValue(bean: educationInstance, field: "formPayment")}</td>
			
				<td>${fieldValue(bean: educationInstance, field: "reasonExpense")}</td>
			
				<td>${fieldValue(bean: educationInstance, field: "typeOfEducation")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${educationInstanceTotal}" />
	</div>
</section>

</body>

</html>
