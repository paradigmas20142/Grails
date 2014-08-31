
<%@ page import="personalfinance.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="person.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${personInstance?.user?.id}">${personInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.adress}">
				<li class="fieldcontain">
					<span id="adress-label" class="property-label"><g:message code="person.adress.label" default="Adress" /></span>
					
						<span class="property-value" aria-labelledby="adress-label"><g:fieldValue bean="${personInstance}" field="adress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.financeSit}">
				<li class="fieldcontain">
					<span id="financeSit-label" class="property-label"><g:message code="person.financeSit.label" default="Finance Sit" /></span>
					
						<span class="property-value" aria-labelledby="financeSit-label"><g:fieldValue bean="${personInstance}" field="financeSit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="person.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${personInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="person.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${personInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.salary}">
				<li class="fieldcontain">
					<span id="salary-label" class="property-label"><g:message code="person.salary.label" default="Salary" /></span>
					
						<span class="property-value" aria-labelledby="salary-label"><g:fieldValue bean="${personInstance}" field="salary"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personInstance?.id}" />
					<g:link class="edit" action="edit" id="${personInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
