<%@ page import="personalfinance.leisure.Theater" %>



<div class="fieldcontain ${hasErrors(bean: theaterInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="theater.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${theaterInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: theaterInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="theater.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${theaterInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: theaterInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="theater.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${theaterInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: theaterInstance, field: 'place', 'error')} ">
	<label for="place">
		<g:message code="theater.place.label" default="Place" />
		
	</label>
	<g:textField name="place" value="${theaterInstance?.place}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: theaterInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="theater.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${theaterInstance?.reasonExpense}"/>
</div>

