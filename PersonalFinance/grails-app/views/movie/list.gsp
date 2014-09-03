
<%@ page import="personalfinance.leisure.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-movie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
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
				<g:paginate total="${movieInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
