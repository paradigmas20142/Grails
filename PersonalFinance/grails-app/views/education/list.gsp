
<%@ page import="personalfinance.Education" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-education" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-education" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'education.spentTotal.label', default: 'Spent Total')}" />
					
						<g:sortableColumn property="spentTuition" title="${message(code: 'education.spentTuition.label', default: 'Spent Tuition')}" />
					
						<th><g:message code="education.book.label" default="Book" /></th>
					
						<g:sortableColumn property="formPayment" title="${message(code: 'education.formPayment.label', default: 'Form Payment')}" />
					
						<g:sortableColumn property="reasonExpense" title="${message(code: 'education.reasonExpense.label', default: 'Reason Expense')}" />
					
						<g:sortableColumn property="typeOfEducation" title="${message(code: 'education.typeOfEducation.label', default: 'Type Of Education')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${educationInstanceList}" status="i" var="educationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${educationInstance.id}">${fieldValue(bean: educationInstance, field: "spentTotal")}</g:link></td>
					
						<td>${fieldValue(bean: educationInstance, field: "spentTuition")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "book")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "formPayment")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "reasonExpense")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "typeOfEducation")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${educationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
