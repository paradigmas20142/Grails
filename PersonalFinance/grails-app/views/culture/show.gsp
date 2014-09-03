
<%@ page import="personalfinance.Culture" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'culture.label', default: 'Culture')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-culture" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-culture" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list culture">
			
				<g:if test="${cultureInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="culture.spentTotal.label" default="Spent Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${cultureInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cultureInstance?.spentMovie}">
				<li class="fieldcontain">
					<span id="spentMovie-label" class="property-label"><g:message code="culture.spentMovie.label" default="Spent Movie" /></span>
					
						<span class="property-value" aria-labelledby="spentMovie-label"><g:fieldValue bean="${cultureInstance}" field="spentMovie"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cultureInstance?.spentTheater}">
				<li class="fieldcontain">
					<span id="spentTheater-label" class="property-label"><g:message code="culture.spentTheater.label" default="Spent Theater" /></span>
					
						<span class="property-value" aria-labelledby="spentTheater-label"><g:fieldValue bean="${cultureInstance}" field="spentTheater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cultureInstance?.book}">
				<li class="fieldcontain">
					<span id="book-label" class="property-label"><g:message code="culture.book.label" default="Book" /></span>
					
						<span class="property-value" aria-labelledby="book-label"><g:link controller="book" action="show" id="${cultureInstance?.book?.id}">${cultureInstance?.book?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cultureInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="culture.formPayment.label" default="Form Payment" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${cultureInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cultureInstance?.reasonExpense}">
				<li class="fieldcontain">
					<span id="reasonExpense-label" class="property-label"><g:message code="culture.reasonExpense.label" default="Reason Expense" /></span>
					
						<span class="property-value" aria-labelledby="reasonExpense-label"><g:fieldValue bean="${cultureInstance}" field="reasonExpense"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cultureInstance?.id}" />
					<g:link class="edit" action="edit" id="${cultureInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
