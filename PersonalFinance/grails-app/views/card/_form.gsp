<%@ page import="personalfinance.Card" %>



<div class="fieldcontain ${hasErrors(bean: cardInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="card.company.label" default="Company" />
		
	</label>
	<g:textField name="company" value="${cardInstance?.company}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cardInstance, field: 'helth', 'error')} required">
	<label for="helth">
		<g:message code="card.helth.label" default="Helth" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="helth" name="helth.id" from="${personalfinance.Helth.list()}" optionKey="id" required="" value="${cardInstance?.helth?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cardInstance, field: 'limit', 'error')} required">
	<label for="limit">
		<g:message code="card.limit.label" default="Limit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="limit" type="number" value="${cardInstance.limit}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: cardInstance, field: 'pay', 'error')} required">
	<label for="pay">
		<g:message code="card.pay.label" default="Pay" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="pay" precision="day"  value="${cardInstance?.pay}"  />
</div>

