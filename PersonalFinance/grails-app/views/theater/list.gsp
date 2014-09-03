
<%@ page import="personalfinance.leisure.Theater" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'theater.label', default: 'Theater')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-theater" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-theater" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
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
				<g:paginate total="${theaterInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
