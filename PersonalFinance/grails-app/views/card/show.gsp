
<%@ page import="personalfinance.Card" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'card.label', default: 'Card')}" />
		<title>Show Card</title>
	</head>
	<body>
		<a href="#show-card" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-card" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list card">
			
				<g:if test="${cardInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="card.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${cardInstance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cardInstance?.helth}">
				<li class="fieldcontain">
					<span id="helth-label" class="property-label"><g:message code="card.helth.label" default="Helth" /></span>
					
						<span class="property-value" aria-labelledby="helth-label"><g:link controller="helth" action="show" id="${cardInstance?.helth?.id}">${cardInstance?.helth?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cardInstance?.limit}">
				<li class="fieldcontain">
					<span id="limit-label" class="property-label"><g:message code="card.limit.label" default="Limit" /></span>
					
						<span class="property-value" aria-labelledby="limit-label"><g:fieldValue bean="${cardInstance}" field="limit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cardInstance?.pay}">
				<li class="fieldcontain">
					<span id="pay-label" class="property-label"><g:message code="card.pay.label" default="Pay" /></span>
					
						<span class="property-value" aria-labelledby="pay-label"><g:formatDate date="${cardInstance?.pay}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cardInstance?.id}" />
					<g:link class="edit" action="edit" id="${cardInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
