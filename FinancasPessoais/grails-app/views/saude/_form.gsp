<%@ page import="financaspessoais.Saude" %>
<g:javascript library="application"/>
<r:require module="jquery-ui"/>

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

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'planoSaude', 'error')} ">
  <div class = "medicine">
	<label>Comprou remedio?</label>

	<label class="buyMedicine">Sim&nbsp
    <g:radio name="medicine" value="1" />
  </label>

	<label class="dontBuyMedicine">Não&nbsp
    <g:radio name="medicine" value="2"  checked = "checked" />
  </label>
  </div>

</div>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'tipoHospital', 'error')} ">
  <div class = "hospitalType">
	<label>Rede do Hospital</label>

	<label class="privateHospital">Particular&nbsp
    <g:radio name="hospital" value="1" />
  </label>

	<label class="publicHospital">Publico&nbsp
    <g:radio name="hospital" value="2"  checked = "checked" />
  </label>
  </div>
</div>
