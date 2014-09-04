
<%@ page import="personalfinance.leisure.Movie" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
	<title>Show Movie</title>
</head>

<body>

<section id="show-movie" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="movie.spentTotal.label" default="Spent Total" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: movieInstance, field: "spentTotal")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="movie.data.label" default="Data" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${movieInstance?.data}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="movie.formPayment.label" default="Form Payment" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: movieInstance, field: "formPayment")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="movie.movieName.label" default="Movie Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: movieInstance, field: "movieName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="movie.place.label" default="Place" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: movieInstance, field: "place")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="movie.reasonExpense.label" default="Reason Expense" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: movieInstance, field: "reasonExpense")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="movie.spentTicket.label" default="Spent Ticket" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: movieInstance, field: "spentTicket")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
