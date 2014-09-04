
<%@ page import="personalfinance.Card" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'card.label', default: 'Card')}" />
		<title>List Card</title>
	</head>
	<body>
		<a href="#list-card" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-card" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="company" title="${message(code: 'card.company.label', default: 'Company')}" />
					
						<th><g:message code="card.helth.label" default="Helth" /></th>
					
						<g:sortableColumn property="limit" title="${message(code: 'card.limit.label', default: 'Limit')}" />
					
						<g:sortableColumn property="pay" title="${message(code: 'card.pay.label', default: 'Pay')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cardInstanceList}" status="i" var="cardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cardInstance.id}">${fieldValue(bean: cardInstance, field: "company")}</g:link></td>
					
						<td>${fieldValue(bean: cardInstance, field: "helth")}</td>
					
						<td>${fieldValue(bean: cardInstance, field: "limit")}</td>
					
						<td><g:formatDate date="${cardInstance.pay}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cardInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
