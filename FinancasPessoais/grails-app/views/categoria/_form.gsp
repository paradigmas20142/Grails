<%@ page import="financaspessoais.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'formaPagamento', 'error')} ">
	<label for="formaPagamento">
		<g:message code="categoria.formaPagamento.label" default="Forma Pagamento" />
		
	</label>
	<g:textField name="formaPagamento" value="${categoriaInstance?.formaPagamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'motivoGasto', 'error')} ">
	<label for="motivoGasto">
		<g:message code="categoria.motivoGasto.label" default="Motivo Gasto" />
		
	</label>
	<g:textField name="motivoGasto" value="${categoriaInstance?.motivoGasto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'valorGasto', 'error')} required">
	<label for="valorGasto">
		<g:message code="categoria.valorGasto.label" default="Valor Gasto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorGasto" type="number" value="${categoriaInstance.valorGasto}" required=""/>
</div>

