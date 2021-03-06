
<%@ page import="personalfinance.CreditCard" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'creditCard.label', default: 'CreditCard')}" />
	<title>Show Credit Card</title>
</head>

<body>

<section id="show-creditCard" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="creditCard.helth.label" default="Helth" /></td>
				
				<td valign="top" class="value"><g:link controller="helth" action="show" id="${creditCardInstance?.helth?.id}">${creditCardInstance?.helth?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="creditCard.cardCompany.label" default="Card Company" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: creditCardInstance, field: "cardCompany")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="creditCard.cardLimit.label" default="Card Limit" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: creditCardInstance, field: "cardLimit")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="creditCard.cardPay.label" default="Card Pay" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${creditCardInstance?.cardPay}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
