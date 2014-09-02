
<%@ page import="personalfinance.accounts.Light" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'light.label', default: 'Light')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-light" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-light" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'light.spentTotal.label', default: 'Valor Total')}" />
											
						<g:sortableColumn property="dueDate" title="${message(code: 'light.dueDate.label', default: 'Data de Vencimento')}" />
					
						<g:sortableColumn property="paymentDate" title="${message(code: 'light.paymentDate.label', default: 'Data de Pagamento')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${lightInstanceList}" status="i" var="lightInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${lightInstance.id}">${fieldValue(bean: lightInstance, field: "spentTotal")}</g:link></td>
					
						<td><g:formatDate date="${lightInstance.dueDate}" type="date" style='SHORT'/></td>
					
						<td><g:formatDate date="${lightInstance.paymentDate}" type="date" style='SHORT'/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${lightInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
