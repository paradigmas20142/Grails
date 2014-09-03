
<%@ page import="personalfinance.Sport" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sport.label', default: 'Sport')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sport" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sport">
			
				<g:if test="${sportInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="sport.spentTotal.label" default="Gasto Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${sportInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sportInstance?.creditcard}">
				<li class="fieldcontain">
					<span id="creditcard-label" class="property-label"><g:message code="sport.creditcard.label" default="Cartão de Crédito" /></span>
					
						<span class="property-value" aria-labelledby="creditcard-label"><g:link controller="creditCard" action="show" id="${sportInstance?.creditcard?.id}">${sportInstance?.creditcard?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sportInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="sport.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${sportInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sportInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="sport.formPayment.label" default="Forma de Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${sportInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sportInstance?.place}">
				<li class="fieldcontain">
					<span id="place-label" class="property-label"><g:message code="sport.place.label" default="Local" /></span>
					
						<span class="property-value" aria-labelledby="place-label"><g:fieldValue bean="${sportInstance}" field="place"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sportInstance?.reasonExpense}">
				<li class="fieldcontain">
					<span id="reasonExpense-label" class="property-label"><g:message code="sport.reasonExpense.label" default="Motivo do Gasto" /></span>
					
						<span class="property-value" aria-labelledby="reasonExpense-label"><g:fieldValue bean="${sportInstance}" field="reasonExpense"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sportInstance?.id}" />
					<g:link class="edit" action="edit" id="${sportInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
