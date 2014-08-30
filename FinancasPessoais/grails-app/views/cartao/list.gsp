
<%@ page import="financaspessoais.Cartao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cartao.label', default: 'Cartao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cartao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cartao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="empresa" title="${message(code: 'cartao.empresa.label', default: 'Empresa')}" />
					
						<g:sortableColumn property="limite" title="${message(code: 'cartao.limite.label', default: 'Limite')}" />
					
						<th><g:message code="cartao.saude.label" default="Saude" /></th>
					
						<g:sortableColumn property="vencimento" title="${message(code: 'cartao.vencimento.label', default: 'Vencimento')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cartaoInstanceList}" status="i" var="cartaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cartaoInstance.id}">${fieldValue(bean: cartaoInstance, field: "empresa")}</g:link></td>
					
						<td>${fieldValue(bean: cartaoInstance, field: "limite")}</td>
					
						<td>${fieldValue(bean: cartaoInstance, field: "saude")}</td>
					
						<td><g:formatDate date="${cartaoInstance.vencimento}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cartaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
