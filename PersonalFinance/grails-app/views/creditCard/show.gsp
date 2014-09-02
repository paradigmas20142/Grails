
<%@ page import="personalfinance.CreditCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'creditCard.label', default: 'CreditCard')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-creditCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-creditCard" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list creditCard">
			
				<g:if test="${creditCardInstance?.helth}">
				<li class="fieldcontain">
					<span id="helth-label" class="property-label"><g:message code="creditCard.helth.label" default="Helth" /></span>
					
						<span class="property-value" aria-labelledby="helth-label"><g:link controller="helth" action="show" id="${creditCardInstance?.helth?.id}">${creditCardInstance?.helth?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${creditCardInstance?.sport}">
				<li class="fieldcontain">
					<span id="sport-label" class="property-label"><g:message code="creditCard.sport.label" default="Sport" /></span>
					
						<span class="property-value" aria-labelledby="sport-label"><g:link controller="sport" action="show" id="${creditCardInstance?.sport?.id}">${creditCardInstance?.sport?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${creditCardInstance?.cableTV}">
				<li class="fieldcontain">
					<span id="cableTV-label" class="property-label"><g:message code="creditCard.cableTV.label" default="Cable TV" /></span>
					
						<span class="property-value" aria-labelledby="cableTV-label"><g:link controller="cableTV" action="show" id="${creditCardInstance?.cableTV?.id}">${creditCardInstance?.cableTV?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${creditCardInstance?.cardCompany}">
				<li class="fieldcontain">
					<span id="cardCompany-label" class="property-label"><g:message code="creditCard.cardCompany.label" default="Card Company" /></span>
					
						<span class="property-value" aria-labelledby="cardCompany-label"><g:fieldValue bean="${creditCardInstance}" field="cardCompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creditCardInstance?.cardLimit}">
				<li class="fieldcontain">
					<span id="cardLimit-label" class="property-label"><g:message code="creditCard.cardLimit.label" default="Card Limit" /></span>
					
						<span class="property-value" aria-labelledby="cardLimit-label"><g:fieldValue bean="${creditCardInstance}" field="cardLimit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creditCardInstance?.cardPay}">
				<li class="fieldcontain">
					<span id="cardPay-label" class="property-label"><g:message code="creditCard.cardPay.label" default="Card Pay" /></span>
					
						<span class="property-value" aria-labelledby="cardPay-label"><g:formatDate date="${creditCardInstance?.cardPay}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${creditCardInstance?.id}" />
					<g:link class="edit" action="edit" id="${creditCardInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
