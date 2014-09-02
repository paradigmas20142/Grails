
<%@ page import="personalfinance.accounts.MobilePhone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mobilePhone.label', default: 'MobilePhone')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mobilePhone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mobilePhone" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mobilePhone">
			
				<g:if test="${mobilePhoneInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="mobilePhone.spentTotal.label" default="Valor Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${mobilePhoneInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobilePhoneInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="mobilePhone.dueDate.label" default="Data de Vencimento" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${mobilePhoneInstance?.dueDate}" type="date" style="SHORT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobilePhoneInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="mobilePhone.formPayment.label" default="Forma de Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${mobilePhoneInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobilePhoneInstance?.paymentDate}">
				<li class="fieldcontain">
					<span id="paymentDate-label" class="property-label"><g:message code="mobilePhone.paymentDate.label" default="Data de Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="paymentDate-label"><g:formatDate date="${mobilePhoneInstance?.paymentDate}" type="date" style="SHORT"/></span>
					
				</li>
				</g:if>
						
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${mobilePhoneInstance?.id}" />
					<g:link class="edit" action="edit" id="${mobilePhoneInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
