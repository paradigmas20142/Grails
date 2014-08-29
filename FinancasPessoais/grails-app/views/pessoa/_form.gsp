<%@ page import="financaspessoais.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="pessoa.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${pessoaInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${pessoaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'salario', 'error')} required">
	<label for="salario">
		<g:message code="pessoa.salario.label" default="Salario" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salario" type="number" value="${pessoaInstance.salario}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'sitFinanceira', 'error')} ">
	<label for="sitFinanceira">
		<g:message code="pessoa.sitFinanceira.label" default="Sit Financeira" />
		
	</label>
	<g:textField name="sitFinanceira" value="${pessoaInstance?.sitFinanceira}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="pessoa.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefone" type="number" value="${pessoaInstance.telefone}" required=""/>
</div>

