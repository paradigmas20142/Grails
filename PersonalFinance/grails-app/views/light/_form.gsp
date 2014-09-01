<%@ page import="personalfinance.accounts.Light" %>



<div class="fieldcontain ${hasErrors(bean: lightInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="light.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${lightInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lightInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="light.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${lightInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: lightInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="light.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${lightInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lightInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="light.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${lightInstance?.reasonExpense}"/>
</div>

