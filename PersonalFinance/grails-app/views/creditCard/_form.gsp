<%@ page import="personalfinance.CreditCard" %>



<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'helth', 'error')} ">
	<label for="helth">
		<g:message code="creditCard.helth.label" default="Helth" />
		
	</label>
	<g:select id="helth" name="helth.id" from="${personalfinance.Helth.list()}" optionKey="id" value="${creditCardInstance?.helth?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'sport', 'error')} ">
	<label for="sport">
		<g:message code="creditCard.sport.label" default="Sport" />
		
	</label>
	<g:select id="sport" name="sport.id" from="${personalfinance.Sport.list()}" optionKey="id" value="${creditCardInstance?.sport?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: creditCardInstance, field: 'cableTV', 'error')} ">
	<label for="cableTV">
		<g:message code="creditCard.cableTV.label" default="Cable TV" />
		
	</label>
	<g:select id="cableTV" name="cableTV.id" from="${personalfinance.accounts.CableTV.list()}" optionKey="id" value="${creditCardInstance?.cableTV?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

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

