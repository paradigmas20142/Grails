
<%@ page import="personalfinance.leisure.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-movie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list movie">
			
				<g:if test="${movieInstance?.spentTotal}">
				<li class="fieldcontain">
					<span id="spentTotal-label" class="property-label"><g:message code="movie.spentTotal.label" default="Spent Total" /></span>
					
						<span class="property-value" aria-labelledby="spentTotal-label"><g:fieldValue bean="${movieInstance}" field="spentTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="movie.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${movieInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.formPayment}">
				<li class="fieldcontain">
					<span id="formPayment-label" class="property-label"><g:message code="movie.formPayment.label" default="Form Payment" /></span>
					
						<span class="property-value" aria-labelledby="formPayment-label"><g:fieldValue bean="${movieInstance}" field="formPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.movieName}">
				<li class="fieldcontain">
					<span id="movieName-label" class="property-label"><g:message code="movie.movieName.label" default="Movie Name" /></span>
					
						<span class="property-value" aria-labelledby="movieName-label"><g:fieldValue bean="${movieInstance}" field="movieName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.place}">
				<li class="fieldcontain">
					<span id="place-label" class="property-label"><g:message code="movie.place.label" default="Place" /></span>
					
						<span class="property-value" aria-labelledby="place-label"><g:fieldValue bean="${movieInstance}" field="place"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.reasonExpense}">
				<li class="fieldcontain">
					<span id="reasonExpense-label" class="property-label"><g:message code="movie.reasonExpense.label" default="Reason Expense" /></span>
					
						<span class="property-value" aria-labelledby="reasonExpense-label"><g:fieldValue bean="${movieInstance}" field="reasonExpense"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.spentTicket}">
				<li class="fieldcontain">
					<span id="spentTicket-label" class="property-label"><g:message code="movie.spentTicket.label" default="Spent Ticket" /></span>
					
						<span class="property-value" aria-labelledby="spentTicket-label"><g:fieldValue bean="${movieInstance}" field="spentTicket"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${movieInstance?.id}" />
					<g:link class="edit" action="edit" id="${movieInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
