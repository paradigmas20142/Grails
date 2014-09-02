
<%@ page import="personalfinance.CreditCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'creditCard.label', default: 'CreditCard')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-creditCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-creditCard" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="creditCard.helth.label" default="Helth" /></th>
					
						<th><g:message code="creditCard.sport.label" default="Sport" /></th>
					
						<th><g:message code="creditCard.cableTV.label" default="Cable TV" /></th>
					
						<g:sortableColumn property="cardCompany" title="${message(code: 'creditCard.cardCompany.label', default: 'Card Company')}" />
					
						<g:sortableColumn property="cardLimit" title="${message(code: 'creditCard.cardLimit.label', default: 'Card Limit')}" />
					
						<g:sortableColumn property="cardPay" title="${message(code: 'creditCard.cardPay.label', default: 'Card Pay')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${creditCardInstanceList}" status="i" var="creditCardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${creditCardInstance.id}">${fieldValue(bean: creditCardInstance, field: "helth")}</g:link></td>
					
						<td>${fieldValue(bean: creditCardInstance, field: "sport")}</td>
					
						<td>${fieldValue(bean: creditCardInstance, field: "cableTV")}</td>
					
						<td>${fieldValue(bean: creditCardInstance, field: "cardCompany")}</td>
					
						<td>${fieldValue(bean: creditCardInstance, field: "cardLimit")}</td>
					
						<td><g:formatDate date="${creditCardInstance.cardPay}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${creditCardInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
