<%@ page import="personalfinance.accounts.CableTV" %>



<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="cableTV.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${cableTVInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="cableTV.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${cableTVInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="cableTV.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${cableTVInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="cableTV.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${cableTVInstance?.reasonExpense}"/>
</div>

