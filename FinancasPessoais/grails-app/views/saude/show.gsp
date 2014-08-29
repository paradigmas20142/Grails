
<%@ page import="financaspessoais.Saude" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'saude.label', default: 'Saude')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-saude" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-saude" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list saude">
			
				<g:if test="${saudeInstance?.formaPagamento}">
				<li class="fieldcontain">
					<span id="formaPagamento-label" class="property-label"><g:message code="saude.formaPagamento.label" default="Forma Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="formaPagamento-label"><g:fieldValue bean="${saudeInstance}" field="formaPagamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${saudeInstance?.motivoGasto}">
				<li class="fieldcontain">
					<span id="motivoGasto-label" class="property-label"><g:message code="saude.motivoGasto.label" default="Motivo Gasto" /></span>
					
						<span class="property-value" aria-labelledby="motivoGasto-label"><g:fieldValue bean="${saudeInstance}" field="motivoGasto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${saudeInstance?.temPlanoSaude}">
				<li class="fieldcontain">
					<span id="temPlanoSaude-label" class="property-label"><g:message code="saude.temPlanoSaude.label" default="Tem Plano Saude" /></span>
					
						<span class="property-value" aria-labelledby="temPlanoSaude-label"><g:formatBoolean boolean="${saudeInstance?.temPlanoSaude}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${saudeInstance?.tipoHospital}">
				<li class="fieldcontain">
					<span id="tipoHospital-label" class="property-label"><g:message code="saude.tipoHospital.label" default="Tipo Hospital" /></span>
					
						<span class="property-value" aria-labelledby="tipoHospital-label"><g:fieldValue bean="${saudeInstance}" field="tipoHospital"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${saudeInstance?.valorGasto}">
				<li class="fieldcontain">
					<span id="valorGasto-label" class="property-label"><g:message code="saude.valorGasto.label" default="Valor Gasto" /></span>
					
						<span class="property-value" aria-labelledby="valorGasto-label"><g:fieldValue bean="${saudeInstance}" field="valorGasto"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${saudeInstance?.id}" />
					<g:link class="edit" action="edit" id="${saudeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
