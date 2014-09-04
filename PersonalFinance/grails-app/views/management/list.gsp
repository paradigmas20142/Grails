
<%@ page import="personalfinance.save.Management" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'management.label', default: 'Management')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-management" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${managementInstanceList}" status="i" var="managementInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${managementInstanceTotal}" />
	</div>
</section>

</body>

</html>
