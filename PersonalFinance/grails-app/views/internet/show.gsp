
<%@ page import="personalfinance.accounts.Internet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'internet.label', default: 'Internet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-internet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-internet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list internet">
			
				<g:if test="${internetInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="internet.spentTotal.label" default="Valor Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${internetInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internetInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="internet.dueDate.label" default="Data de Vencimento" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${internetInstance?.dueDate}" type="date" style='SHORT' /></span>
					
				</li>
				</g:if>
			
				<g:if test="${internetInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="internet.formPayment.label" default="Forma de Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${internetInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${internetInstance?.paymentDate}">
				<li class="fieldcontain">
					<span id="paymentDate-label" class="property-label"><g:message code="internet.paymentDate.label" default="Data de Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="paymentDate-label"><g:formatDate date="${internetInstance?.paymentDate}" type="date" style='SHORT'/></span>
					
				</li>
				</g:if>
					
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${internetInstance?.id}" />
					<g:link class="edit" action="edit" id="${internetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
