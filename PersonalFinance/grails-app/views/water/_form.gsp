<%@ page import="personalfinance.accounts.Water" %>



<div class="fieldcontain ${hasErrors(bean: waterInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="water.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${waterInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="water.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${waterInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: waterInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="water.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${waterInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="water.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${waterInstance?.reasonExpense}"/>
</div>

