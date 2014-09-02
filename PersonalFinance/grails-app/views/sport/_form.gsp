<%@ page import="personalfinance.Sport" %>



<div class="fieldcontain ${hasErrors(bean: sportInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="sport.spentTotal.label" default="Gasto Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${sportInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sportInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="sport.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${sportInstance?.data}"  />
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


<div class="fieldcontain ${hasErrors(bean: sportInstance, field: 'creditcard', 'error')} ">
	<label for="creditcard">
		<g:message code="sport.creditcard.label" default="Cartão de crédito" />
		
	</label>
	<g:select id="creditcard" name="creditcard.id" from="${personalfinance.CreditCard.list()}" optionKey="id" value="${sportInstance?.creditcard?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sportInstance, field: 'place', 'error')} ">
	<label for="place">
		<g:message code="sport.place.label" default="Local" />
		
	</label>
	<g:textField name="place" value="${sportInstance?.place}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sportInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="sport.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="${sportInstance?.reasonExpense}"/>
</div>

