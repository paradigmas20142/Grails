<%@ page import="personalfinance.accounts.CableTV" %>



<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="cableTV.spentTotal.label" default="Valor Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${cableTVInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="cableTV.dueDate.label" default="Data de Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${cableTVInstance?.dueDate}"  />
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

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'creditcard', 'error')} ">
	<label for="creditcard">
		<g:message code="cableTV.creditcard.label" default="Cartão de crédito" />
		
	</label>
	<g:select id="creditcard" name="creditcard.id" from="${personalfinance.CreditCard.list()}" optionKey="id" value="${cableTVInstance?.creditcard?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="cableTV.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="${cableTVInstance?.reasonExpense}"/>
</div>

