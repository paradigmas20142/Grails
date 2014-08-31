
<%@ page import="personalfinance.Helth" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'helth.label', default: 'Helth')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-helth" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-helth" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="spentTotal" title="${message(code: 'helth.spentTotal.label', default: 'Spent Total')}" />
					
						<g:sortableColumn property="spentOnMedicine" title="${message(code: 'helth.spentOnMedicine.label', default: 'Spent On Medicine')}" />
					
						<g:sortableColumn property="formPayment" title="${message(code: 'helth.formPayment.label', default: 'Form Payment')}" />
					
						<g:sortableColumn property="hospitalType" title="${message(code: 'helth.hospitalType.label', default: 'Hospital Type')}" />
					
						<g:sortableColumn property="reasonExpense" title="${message(code: 'helth.reasonExpense.label', default: 'Reason Expense')}" />
					
						<g:sortableColumn property="spentOnConsult" title="${message(code: 'helth.spentOnConsult.label', default: 'Spent On Consult')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${helthInstanceList}" status="i" var="helthInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${helthInstance.id}">${fieldValue(bean: helthInstance, field: "spentTotal")}</g:link></td>
					
						<td>${fieldValue(bean: helthInstance, field: "spentOnMedicine")}</td>
					
						<td>${fieldValue(bean: helthInstance, field: "formPayment")}</td>
					
						<td>${fieldValue(bean: helthInstance, field: "hospitalType")}</td>
					
						<td>${fieldValue(bean: helthInstance, field: "reasonExpense")}</td>
					
						<td>${fieldValue(bean: helthInstance, field: "spentOnConsult")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${helthInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
