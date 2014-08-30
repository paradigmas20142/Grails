
<%@ page import="financaspessoais.Saude" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'saude.label', default: 'Saude')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-saude" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-saude" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="gastoTotal" title="${message(code: 'saude.gastoTotal.label', default: 'Gasto Total')}" />
					
						<th><g:message code="saude.cartao.label" default="Cartao" /></th>
					
						<g:sortableColumn property="valorGastoRemedio" title="${message(code: 'saude.valorGastoRemedio.label', default: 'Valor Gasto Remedio')}" />
					
						<g:sortableColumn property="valorGastoConsulta" title="${message(code: 'saude.valorGastoConsulta.label', default: 'Valor Gasto Consulta')}" />
					
						<g:sortableColumn property="formaPagamento" title="${message(code: 'saude.formaPagamento.label', default: 'Forma Pagamento')}" />
					
						<g:sortableColumn property="motivoGasto" title="${message(code: 'saude.motivoGasto.label', default: 'Motivo Gasto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${saudeInstanceList}" status="i" var="saudeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${saudeInstance.id}">${fieldValue(bean: saudeInstance, field: "gastoTotal")}</g:link></td>
					
						<td>${fieldValue(bean: saudeInstance, field: "cartao")}</td>
					
						<td>${fieldValue(bean: saudeInstance, field: "valorGastoRemedio")}</td>
					
						<td>${fieldValue(bean: saudeInstance, field: "valorGastoConsulta")}</td>
					
						<td>${fieldValue(bean: saudeInstance, field: "formaPagamento")}</td>
					
						<td>${fieldValue(bean: saudeInstance, field: "motivoGasto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${saudeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
