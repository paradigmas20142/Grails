
<%@ page import="financaspessoais.Categoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-categoria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-categoria" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list categoria">
			
				<g:if test="${categoriaInstance?.formaPagamento}">
				<li class="fieldcontain">
					<span id="formaPagamento-label" class="property-label"><g:message code="categoria.formaPagamento.label" default="Forma Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="formaPagamento-label"><g:fieldValue bean="${categoriaInstance}" field="formaPagamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoriaInstance?.motivoGasto}">
				<li class="fieldcontain">
					<span id="motivoGasto-label" class="property-label"><g:message code="categoria.motivoGasto.label" default="Motivo Gasto" /></span>
					
						<span class="property-value" aria-labelledby="motivoGasto-label"><g:fieldValue bean="${categoriaInstance}" field="motivoGasto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoriaInstance?.valorGasto}">
				<li class="fieldcontain">
					<span id="valorGasto-label" class="property-label"><g:message code="categoria.valorGasto.label" default="Valor Gasto" /></span>
					
						<span class="property-value" aria-labelledby="valorGasto-label"><g:fieldValue bean="${categoriaInstance}" field="valorGasto"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${categoriaInstance?.id}" />
					<g:link class="edit" action="edit" id="${categoriaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
