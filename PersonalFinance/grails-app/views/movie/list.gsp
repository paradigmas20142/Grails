
<%@ page import="personalfinance.leisure.Movie" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
	<title>List Movie</title>
</head>

<body>
	
<section id="list-movie" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="spentTotal" title="${message(code: 'movie.spentTotal.label', default: 'Spent Total')}" />
			
				<g:sortableColumn property="data" title="${message(code: 'movie.data.label', default: 'Data')}" />
			
				<g:sortableColumn property="formPayment" title="${message(code: 'movie.formPayment.label', default: 'Form Payment')}" />
			
				<g:sortableColumn property="movieName" title="${message(code: 'movie.movieName.label', default: 'Movie Name')}" />
			
				<g:sortableColumn property="place" title="${message(code: 'movie.place.label', default: 'Place')}" />
			
				<g:sortableColumn property="reasonExpense" title="${message(code: 'movie.reasonExpense.label', default: 'Reason Expense')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${movieInstanceList}" status="i" var="movieInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${movieInstance.id}">${fieldValue(bean: movieInstance, field: "spentTotal")}</g:link></td>
			
				<td><g:formatDate date="${movieInstance.data}" /></td>
			
				<td>${fieldValue(bean: movieInstance, field: "formPayment")}</td>
			
				<td>${fieldValue(bean: movieInstance, field: "movieName")}</td>
			
				<td>${fieldValue(bean: movieInstance, field: "place")}</td>
			
				<td>${fieldValue(bean: movieInstance, field: "reasonExpense")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${movieInstanceTotal}" />
	</div>
</section>

</body>

</html>
