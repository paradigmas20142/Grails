
<%@ page import="personalfinance.Sport" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sport.label', default: 'Sport')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sport" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'sport.spentTotal.label', default: 'Gasto Total')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'sport.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="formPayment" title="${message(code: 'sport.formPayment.label', default: 'Forma de Pagamento')}" />
					
						<g:sortableColumn property="place" title="${message(code: 'sport.place.label', default: 'Local')}" />
					
						<g:sortableColumn property="reasonExpense" title="${message(code: 'sport.reasonExpense.label', default: 'Motivo do Gasto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sportInstanceList}" status="i" var="sportInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sportInstance.id}">${fieldValue(bean: sportInstance, field: "spentTotal")}</g:link></td>
					
						<td><g:formatDate date="${sportInstance.data}" type="date" style="SHORT" /></td>
					
						<td>${fieldValue(bean: sportInstance, field: "formPayment")}</td>
					
						<td>${fieldValue(bean: sportInstance, field: "place")}</td>
					
						<td>${fieldValue(bean: sportInstance, field: "reasonExpense")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sportInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
