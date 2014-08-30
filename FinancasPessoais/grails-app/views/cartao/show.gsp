
<%@ page import="financaspessoais.Cartao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cartao.label', default: 'Cartao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cartao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cartao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cartao">
			
				<g:if test="${cartaoInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="cartao.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:fieldValue bean="${cartaoInstance}" field="empresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cartaoInstance?.limite}">
				<li class="fieldcontain">
					<span id="limite-label" class="property-label"><g:message code="cartao.limite.label" default="Limite" /></span>
					
						<span class="property-value" aria-labelledby="limite-label"><g:fieldValue bean="${cartaoInstance}" field="limite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cartaoInstance?.saude}">
				<li class="fieldcontain">
					<span id="saude-label" class="property-label"><g:message code="cartao.saude.label" default="Saude" /></span>
					
						<span class="property-value" aria-labelledby="saude-label"><g:link controller="saude" action="show" id="${cartaoInstance?.saude?.id}">${cartaoInstance?.saude?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cartaoInstance?.vencimento}">
				<li class="fieldcontain">
					<span id="vencimento-label" class="property-label"><g:message code="cartao.vencimento.label" default="Vencimento" /></span>
					
						<span class="property-value" aria-labelledby="vencimento-label"><g:formatDate date="${cartaoInstance?.vencimento}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cartaoInstance?.id}" />
					<g:link class="edit" action="edit" id="${cartaoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
