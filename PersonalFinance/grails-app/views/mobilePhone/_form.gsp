<%@ page import="personalfinance.accounts.MobilePhone" %>



<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="mobilePhone.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${mobilePhoneInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="mobilePhone.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${mobilePhoneInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="mobilePhone.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${mobilePhoneInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="mobilePhone.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${mobilePhoneInstance?.reasonExpense}"/>
</div>

