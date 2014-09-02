<%@ page import="personalfinance.accounts.Internet" %>



<div class="fieldcontain ${hasErrors(bean: internetInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="internet.spentTotal.label" default="Valor Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${internetInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: internetInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="internet.dueDate.label" default="Data de Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${internetInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: internetInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="internet.formPayment.label" default="Forma de Pagamento" />
		
	</label>
	<g:textField name="formPayment" value="Dinheiro"/>
</div>

<div class="fieldcontain ${hasErrors(bean: internetInstance, field: 'paymentDate', 'error')} required">
	<label for="paymentDate">
		<g:message code="internet.paymentDate.label" default="Data de Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paymentDate" precision="day"  value="${internetInstance?.paymentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: internetInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="internet.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="Internet"/>
</div>

