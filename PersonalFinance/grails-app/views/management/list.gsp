
<%@ page import="personalfinance.save.Management" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'management.label', default: 'Management')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-management" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-management" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${managementInstanceList}" status="i" var="managementInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${managementInstanceTotal}" />
			</div>
      <g:set var = "spentEducation" value = "${education.calcSpentTotal()}" />
      <g:message code = "default.list.label" args = "[spentEducation]" />
      <g:set var = "spentHelth" value = "${helth.calcSpentTotal()}" />
      <g:message code = "default.list.label" args = "[spentHelth]" />
      <g:set var = "spentEducation" value = "${education.calcSpentTotal()}" />
      <g:message code = "default.list.label" args = "[spentEducation]" />
      <g:set var = "spentHelth" value = "${helth.calcSpentTotal()}" />
      <g:message code = "default.list.label" args = "[spentHelth]" />
		</div>
	</body>
</html>