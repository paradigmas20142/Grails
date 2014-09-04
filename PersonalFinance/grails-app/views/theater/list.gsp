
<%@ page import="personalfinance.leisure.Theater" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'theater.label', default: 'Theater')}" />
	<title>List Theater</title>
</head>

<body>
	
<section id="list-theater" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="spentTotal" title="${message(code: 'theater.spentTotal.label', default: 'Spent Total')}" />
			
				<g:sortableColumn property="data" title="${message(code: 'theater.data.label', default: 'Data')}" />
			
				<g:sortableColumn property="formPayment" title="${message(code: 'theater.formPayment.label', default: 'Form Payment')}" />
			
				<g:sortableColumn property="place" title="${message(code: 'theater.place.label', default: 'Place')}" />
			
				<g:sortableColumn property="reasonExpense" title="${message(code: 'theater.reasonExpense.label', default: 'Reason Expense')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${theaterInstanceList}" status="i" var="theaterInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${theaterInstance.id}">${fieldValue(bean: theaterInstance, field: "spentTotal")}</g:link></td>
			
				<td><g:formatDate date="${theaterInstance.data}" /></td>
			
				<td>${fieldValue(bean: theaterInstance, field: "formPayment")}</td>
			
				<td>${fieldValue(bean: theaterInstance, field: "place")}</td>
			
				<td>${fieldValue(bean: theaterInstance, field: "reasonExpense")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${theaterInstanceTotal}" />
	</div>
</section>

</body>

</html>
