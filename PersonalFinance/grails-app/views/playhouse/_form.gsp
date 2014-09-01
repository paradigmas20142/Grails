<%@ page import="personalfinance.Playhouse" %>



<div class="fieldcontain ${hasErrors(bean: playhouseInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="playhouse.spentTotal.label" default="Gasto Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${playhouseInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playhouseInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="playhouse.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${playhouseInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'formaPagamento', 'error')} ">
<div class = "payment">
<label>Forma de pagamento</label>

<label class="money">Dinheiro&nbsp
<g:radio name="formPayment" value="money" />
</label>

<label class="creditcard">Cartão&nbsp

<g:radio name="formPayment" value="card" id = "credicard"/>
</label>

<label class="check">Cheque&nbsp
<g:radio name="formPayment" value="check" />
</label>


<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'creditcard', 'error')} ">
<label for="creditcard">
<g:message code="helth.creditcard.label" default="CreditCard" />

</label>
<g:select id="creditcard" name="creditCard.id" from="${personalfinance.CreditCard.list()}" optionKey="id" value="${helthInstance?.creditCard?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>
</div>


<div class="fieldcontain ${hasErrors(bean: playhouseInstance, field: 'place', 'error')} ">
	<label for="place">
		<g:message code="playhouse.place.label" default="Local" />
		
	</label>
	<g:textField name="place" value="${playhouseInstance?.place}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playhouseInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="playhouse.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="${playhouseInstance?.reasonExpense}"/>
</div>

