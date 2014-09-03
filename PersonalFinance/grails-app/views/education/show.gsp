
<%@ page import="personalfinance.Education" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-education" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-education" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list education">
			
				<g:if test="${educationInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="education.spentTotal.label" default="Spent Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${educationInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.spentTuition}">
				<li class="fieldcontain">
					<span id="spentTuition-label" class="property-label"><g:message code="education.spentTuition.label" default="Spent Tuition" /></span>
					
						<span class="property-value" aria-labelledby="spentTuition-label"><g:fieldValue bean="${educationInstance}" field="spentTuition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.book}">
				<li class="fieldcontain">
					<span id="book-label" class="property-label"><g:message code="education.book.label" default="Book" /></span>
					
						<span class="property-value" aria-labelledby="book-label"><g:link controller="book" action="show" id="${educationInstance?.book?.id}">${educationInstance?.book?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="education.formPayment.label" default="Form Payment" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${educationInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.reasonExpense}">
				<li class="fieldcontain">
					<span id="reasonExpense-label" class="property-label"><g:message code="education.reasonExpense.label" default="Reason Expense" /></span>
					
						<span class="property-value" aria-labelledby="reasonExpense-label"><g:fieldValue bean="${educationInstance}" field="reasonExpense"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.typeOfEducation}">
				<li class="fieldcontain">
					<span id="typeOfEducation-label" class="property-label"><g:message code="education.typeOfEducation.label" default="Type Of Education" /></span>
					
						<span class="property-value" aria-labelledby="typeOfEducation-label"><g:fieldValue bean="${educationInstance}" field="typeOfEducation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.typeOfInstitution}">
				<li class="fieldcontain">
					<span id="typeOfInstitution-label" class="property-label"><g:message code="education.typeOfInstitution.label" default="Type Of Institution" /></span>
					
						<span class="property-value" aria-labelledby="typeOfInstitution-label"><g:fieldValue bean="${educationInstance}" field="typeOfInstitution"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${educationInstance?.id}" />
					<g:link class="edit" action="edit" id="${educationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
