
<%@ page import="personalfinance.Playhouse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'playhouse.label', default: 'Playhouse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-playhouse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-playhouse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'playhouse.spentTotal.label', default: 'Gasto Total')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'playhouse.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="formPayment" title="${message(code: 'playhouse.formPayment.label', default: 'Forma de Pagamento')}" />
					
						<g:sortableColumn property="place" title="${message(code: 'playhouse.place.label', default: 'Local')}" />
					
						<g:sortableColumn property="reasonExpense" title="${message(code: 'playhouse.reasonExpense.label', default: 'Razao do Gasto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${playhouseInstanceList}" status="i" var="playhouseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${playhouseInstance.id}">${fieldValue(bean: playhouseInstance, field: "spentTotal")}</g:link></td>
					
						<td><g:formatDate date="${playhouseInstance.data}" /></td>
					
						<td>${fieldValue(bean: playhouseInstance, field: "formPayment")}</td>
					
						<td>${fieldValue(bean: playhouseInstance, field: "place")}</td>
					
						<td>${fieldValue(bean: playhouseInstance, field: "reasonExpense")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${playhouseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>