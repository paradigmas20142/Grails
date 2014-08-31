<%@ page import="personalfinance.CreditCard" %>



<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'cardCompany', 'error')} ">
	<label for="cardCompany">
		<g:message code="creditCard.cardCompany.label" default="Card Company" />
		
	</label>
	<g:textField name="cardCompany" value="${creditCardInstance?.cardCompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'cardLimit', 'error')} required">
	<label for="cardLimit">
		<g:message code="creditCard.cardLimit.label" default="Card Limit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cardLimit" type="number" value="${creditCardInstance.cardLimit}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'cardPay', 'error')} required">
	<label for="cardPay">
		<g:message code="creditCard.cardPay.label" default="Card Pay" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="cardPay" precision="day"  value="${creditCardInstance?.cardPay}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'helth', 'error')} required">
	<label for="helth">
		<g:message code="creditCard.helth.label" default="Helth" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="helth" name="helth.id" from="${personalfinance.Helth.list()}" optionKey="id" required="" value="${creditCardInstance?.helth?.id}" class="many-to-one"/>
</div>

