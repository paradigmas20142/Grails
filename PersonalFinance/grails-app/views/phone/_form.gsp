<%@ page import="personalfinance.accounts.Phone" %>



<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="phone.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${phoneInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="phone.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${phoneInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="phone.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${phoneInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="phone.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${phoneInstance?.reasonExpense}"/>
</div>

