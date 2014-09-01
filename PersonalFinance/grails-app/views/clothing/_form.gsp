<%@ page import="personalfinance.Clothing" %>



<div class="fieldcontain ${hasErrors(bean: clothingInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="clothing.spentTotal.label" default="Gasto Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${clothingInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clothingInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="clothing.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${clothingInstance?.data}"  />
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


<div class="fieldcontain ${hasErrors(bean: clothingInstance, field: 'place', 'error')} ">
	<label for="place">
		<g:message code="clothing.place.label" default="Local" />
		
	</label>
	<g:textField name="place" value="${clothingInstance?.place}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clothingInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="clothing.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="${clothingInstance?.reasonExpense}"/>
</div>

