<%@ page import="financaspessoais.Cartao" %>



<div class="fieldcontain ${hasErrors(bean: cartaoInstance, field: 'empresa', 'error')} ">
	<label for="empresa">
		<g:message code="cartao.empresa.label" default="Empresa" />
		
	</label>
	<g:textField name="empresa" value="${cartaoInstance?.empresa}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cartaoInstance, field: 'limite', 'error')} required">
	<label for="limite">
		<g:message code="cartao.limite.label" default="Limite" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="limite" type="number" value="${cartaoInstance.limite}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: cartaoInstance, field: 'saude', 'error')} required">
	<label for="saude">
		<g:message code="cartao.saude.label" default="Saude" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="saude" name="saude.id" from="${financaspessoais.Saude.list()}" optionKey="id" required="" value="${cartaoInstance?.saude?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cartaoInstance, field: 'vencimento', 'error')} required">
	<label for="vencimento">
		<g:message code="cartao.vencimento.label" default="Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="vencimento" precision="day"  value="${cartaoInstance?.vencimento}"  />
</div>

