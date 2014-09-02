<%@ page import="personalfinance.accounts.Water" %>



<div class="fieldcontain ${hasErrors(bean: waterInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="water.spentTotal.label" default="Valor Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${waterInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="water.dueDate.label" default="Data de Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${waterInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: waterInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="water.formPayment.label" default="Forma de Pagamento" />
		
	</label>
	<g:textField name="formPayment" value="Dinheiro"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterInstance, field: 'paymentDate', 'error')} required">
	<label for="paymentDate">
		<g:message code="water.paymentDate.label" default="Data de Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paymentDate" precision="day"  value="${waterInstance?.paymentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: waterInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="water.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="Conta de Água"/>
</div>

