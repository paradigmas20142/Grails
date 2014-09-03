
<%@ page import="personalfinance.user.Person" %>
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
			
				<g:if test="${personInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="person.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${personInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="person.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${personInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="person.address.label" default="Endereço" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${personInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.financialSituation}">
				<li class="fieldcontain">
					<span id="financialSituation-label" class="property-label"><g:message code="person.financialSituation.label" default="Situação Financeira" /></span>
					
						<span class="property-value" aria-labelledby="financialSituation-label"><g:fieldValue bean="${personInstance}" field="financialSituation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="person.name.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${personInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="person.phone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${personInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.salary}">
				<li class="fieldcontain">
					<span id="salary-label" class="property-label"><g:message code="person.salary.label" default="Salário" /></span>
					
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
