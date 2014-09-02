
<%@ page import="personalfinance.accounts.CableTV" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cableTV.label', default: 'CableTV')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cableTV" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cableTV" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'cableTV.spentTotal.label', default: 'Valor Total')}" />
					
						<g:sortableColumn property="dueDate" title="${message(code: 'cableTV.dueDate.label', default: 'Data de Vencimento')}" />
					
						<g:sortableColumn property="paymentDate" title="${message(code: 'cableTV.paymentDate.label', default: 'Data de Pagamento')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cableTVInstanceList}" status="i" var="cableTVInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cableTVInstance.id}">${fieldValue(bean: cableTVInstance, field: "spentTotal")}</g:link></td>
					
						<td><g:formatDate date="${cableTVInstance.dueDate}" type="date" style='SHORT' /></td>				
					
						<td><g:formatDate date="${cableTVInstance.paymentDate}" type="date" style='SHORT'/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cableTVInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
