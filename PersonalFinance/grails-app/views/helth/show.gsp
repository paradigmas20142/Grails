
<%@ page import="personalfinance.Helth" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'helth.label', default: 'Helth')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-helth" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-helth" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list helth">
			
				<g:if test="${helthInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="helth.spentTotal.label" default="Spent Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${helthInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${helthInstance?.spentOnMedicine}">
				<li class="fieldcontain">
					<span id="spentOnMedicine-label" class="property-label"><g:message code="helth.spentOnMedicine.label" default="Spent On Medicine" /></span>
					
						<span class="property-value" aria-labelledby="spentOnMedicine-label"><g:fieldValue bean="${helthInstance}" field="spentOnMedicine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${helthInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="helth.formPayment.label" default="Form Payment" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${helthInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${helthInstance?.hospitalType}">
				<li class="fieldcontain">
					<span id="hospitalType-label" class="property-label"><g:message code="helth.hospitalType.label" default="Hospital Type" /></span>
					
						<span class="property-value" aria-labelledby="hospitalType-label"><g:fieldValue bean="${helthInstance}" field="hospitalType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${helthInstance?.reasonExpense}">
				<li class="fieldcontain">
					<span id="reasonExpense-label" class="property-label"><g:message code="helth.reasonExpense.label" default="Reason Expense" /></span>
					
						<span class="property-value" aria-labelledby="reasonExpense-label"><g:fieldValue bean="${helthInstance}" field="reasonExpense"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${helthInstance?.spentOnConsult}">
				<li class="fieldcontain">
					<span id="spentOnConsult-label" class="property-label"><g:message code="helth.spentOnConsult.label" default="Spent On Consult" /></span>
					
						<span class="property-value" aria-labelledby="spentOnConsult-label"><g:fieldValue bean="${helthInstance}" field="spentOnConsult"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${helthInstance?.id}" />
					<g:link class="edit" action="edit" id="${helthInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
