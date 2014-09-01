
<%@ page import="personalfinance.Clothing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'clothing.label', default: 'Clothing')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-clothing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-clothing" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'clothing.spentTotal.label', default: 'Gasto Total')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'clothing.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="formPayment" title="${message(code: 'clothing.formPayment.label', default: 'Forma de Pagamento')}" />
					
						<g:sortableColumn property="place" title="${message(code: 'clothing.place.label', default: 'Local')}" />
					
						<g:sortableColumn property="reasonExpense" title="${message(code: 'clothing.reasonExpense.label', default: 'Motivo do Gasto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clothingInstanceList}" status="i" var="clothingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clothingInstance.id}">${fieldValue(bean: clothingInstance, field: "spentTotal")}</g:link></td>
					
						<td><g:formatDate date="${clothingInstance.data}" type="date" style="SHORT" /></td>
					
						<td>${fieldValue(bean: clothingInstance, field: "formPayment")}</td>
					
						<td>${fieldValue(bean: clothingInstance, field: "place")}</td>
					
						<td>${fieldValue(bean: clothingInstance, field: "reasonExpense")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clothingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
