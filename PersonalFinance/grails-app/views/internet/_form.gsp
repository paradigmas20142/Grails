<%@ page import="personalfinance.accounts.Internet" %>



<div class="fieldcontain ${hasErrors(bean: internetInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="internet.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${internetInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: internetInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="internet.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${internetInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: internetInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="internet.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${internetInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: internetInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="internet.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${internetInstance?.reasonExpense}"/>
</div>

