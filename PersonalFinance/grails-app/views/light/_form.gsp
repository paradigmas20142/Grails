<%@ page import="personalfinance.accounts.Light" %>



<div class="fieldcontain ${hasErrors(bean: lightInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="light.spentTotal.label" default="Valor Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${lightInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lightInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="light.formPayment.label" default="Forma de Pagamento" />
		
	</label>
	<g:textField name="formPayment" value="Dinheiro"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lightInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="light.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="Conta de Luz"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lightInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="light.dueDate.label" default="Data de Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${lightInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: lightInstance, field: 'paymentDate', 'error')} required">
	<label for="paymentDate">
		<g:message code="light.paymentDate.label" default="Data de Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paymentDate" precision="day"  value="${lightInstance?.paymentDate}"  />
</div>

