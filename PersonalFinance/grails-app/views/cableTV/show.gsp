
<%@ page import="personalfinance.accounts.CableTV" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cableTV.label', default: 'CableTV')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cableTV" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cableTV" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cableTV">
			
				<g:if test="${cableTVInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="cableTV.spentTotal.label" default="Valor Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${cableTVInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cableTVInstance?.creditcard}">
				<li class="fieldcontain">
					<span id="creditcard-label" class="property-label"><g:message code="cableTV.creditcard.label" default="Cartão de Crédito" /></span>
					
						<span class="property-value" aria-labelledby="creditcard-label"><g:link controller="creditCard" action="show" id="${cableTVInstance?.creditcard?.id}">${cableTVInstance?.creditcard?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cableTVInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="cableTV.dueDate.label" default="Data de Vencimento" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${cableTVInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cableTVInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="cableTV.formPayment.label" default="Forma de Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${cableTVInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cableTVInstance?.reasonExpense}">
				<li class="fieldcontain">
					<span id="reasonExpense-label" class="property-label"><g:message code="cableTV.reasonExpense.label" default="Motivo do Gasto" /></span>
					
						<span class="property-value" aria-labelledby="reasonExpense-label"><g:fieldValue bean="${cableTVInstance}" field="reasonExpense"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cableTVInstance?.id}" />
					<g:link class="edit" action="edit" id="${cableTVInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
