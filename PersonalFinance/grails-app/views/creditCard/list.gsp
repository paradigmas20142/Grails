
<%@ page import="personalfinance.CreditCard" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'creditCard.label', default: 'CreditCard')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-creditCard" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="creditCard.helth.label" default="Helth" /></th>
			
				<g:sortableColumn property="cardCompany" title="${message(code: 'creditCard.cardCompany.label', default: 'Card Company')}" />
			
				<g:sortableColumn property="cardLimit" title="${message(code: 'creditCard.cardLimit.label', default: 'Card Limit')}" />
			
				<g:sortableColumn property="cardPay" title="${message(code: 'creditCard.cardPay.label', default: 'Card Pay')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${creditCardInstanceList}" status="i" var="creditCardInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${creditCardInstance.id}">${fieldValue(bean: creditCardInstance, field: "helth")}</g:link></td>
			
				<td>${fieldValue(bean: creditCardInstance, field: "cardCompany")}</td>
			
				<td>${fieldValue(bean: creditCardInstance, field: "cardLimit")}</td>
			
				<td><g:formatDate date="${creditCardInstance.cardPay}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${creditCardInstanceTotal}" />
	</div>
</section>

</body>

</html>
