
<%@ page import="personalfinance.Playhouse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'playhouse.label', default: 'Playhouse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-playhouse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-playhouse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list playhouse">
			
				<g:if test="${playhouseInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="playhouse.spentTotal.label" default="Gasto Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${playhouseInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playhouseInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="playhouse.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${playhouseInstance?.data}" type="date" style="SHORT" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playhouseInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="playhouse.formPayment.label" default="Forma de Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${playhouseInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playhouseInstance?.place}">
				<li class="fieldcontain">
					<span id="place-label" class="property-label"><g:message code="playhouse.place.label" default="Local" /></span>
					
						<span class="property-value" aria-labelledby="place-label"><g:fieldValue bean="${playhouseInstance}" field="place"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playhouseInstance?.reasonExpense}">
				<li class="fieldcontain">
					<span id="reasonExpense-label" class="property-label"><g:message code="playhouse.reasonExpense.label" default="Razão do Gasto" /></span>
					
						<span class="property-value" aria-labelledby="reasonExpense-label"><g:fieldValue bean="${playhouseInstance}" field="reasonExpense"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${playhouseInstance?.id}" />
					<g:link class="edit" action="edit" id="${playhouseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
