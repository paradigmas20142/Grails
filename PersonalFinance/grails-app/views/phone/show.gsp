
<%@ page import="personalfinance.accounts.Phone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phone.label', default: 'Phone')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-phone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-phone" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list phone">
			
				<g:if test="${phoneInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="phone.spentTotal.label" default="Spent Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${phoneInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${phoneInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="phone.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${phoneInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${phoneInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="phone.formPayment.label" default="Form Payment" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${phoneInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${phoneInstance?.reasonExpense}">
				<li class="fieldcontain">
					<span id="reasonExpense-label" class="property-label"><g:message code="phone.reasonExpense.label" default="Reason Expense" /></span>
					
						<span class="property-value" aria-labelledby="reasonExpense-label"><g:fieldValue bean="${phoneInstance}" field="reasonExpense"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${phoneInstance?.id}" />
					<g:link class="edit" action="edit" id="${phoneInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
