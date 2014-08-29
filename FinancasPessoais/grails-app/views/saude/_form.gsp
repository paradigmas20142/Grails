<%@ page import="financaspessoais.Saude" %>



<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'formaPagamento', 'error')} ">
	<label for="formaPagamento">
		<g:message code="saude.formaPagamento.label" default="Forma Pagamento" />
		
	</label>
	<g:textField name="formaPagamento" value="${saudeInstance?.formaPagamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'motivoGasto', 'error')} ">
	<label for="motivoGasto">
		<g:message code="saude.motivoGasto.label" default="Motivo Gasto" />
		
	</label>
	<g:textField name="motivoGasto" value="${saudeInstance?.motivoGasto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'temPlanoSaude', 'error')} ">
	<label for="temPlanoSaude">
		<g:message code="saude.temPlanoSaude.label" default="Tem Plano Saude" />
		
	</label>
	<g:checkBox name="temPlanoSaude" value="${saudeInstance?.temPlanoSaude}" />
</div>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'tipoHospital', 'error')} ">
	<label for="tipoHospital">
		<g:message code="saude.tipoHospital.label" default="Tipo Hospital" />
		
	</label>
	<g:textField name="tipoHospital" value="${saudeInstance?.tipoHospital}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'valorGasto', 'error')} required">
	<label for="valorGasto">
		<g:message code="saude.valorGasto.label" default="Valor Gasto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorGasto" type="number" value="${saudeInstance.valorGasto}" required=""/>
</div>
