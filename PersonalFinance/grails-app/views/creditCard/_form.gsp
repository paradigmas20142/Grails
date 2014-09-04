<%@ page import="personalfinance.CreditCard" %>



			<div class="control-group fieldcontain ${hasErrors(bean: creditCardInstance, field: 'helth', 'error')} ">
				<label for="helth" class="control-label"><g:message code="creditCard.helth.label" default="Helth" /></label>
				<div class="controls">
					<g:select id="helth" name="helth.id" from="${personalfinance.Helth.list()}" optionKey="id" value="${creditCardInstance?.helth?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: creditCardInstance, field: 'helth', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: creditCardInstance, field: 'cardCompany', 'error')} ">
				<label for="cardCompany" class="control-label"><g:message code="creditCard.cardCompany.label" default="Card Company" /></label>
				<div class="controls">
					<g:textField name="cardCompany" value="${creditCardInstance?.cardCompany}"/>
					<span class="help-inline">${hasErrors(bean: creditCardInstance, field: 'cardCompany', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: creditCardInstance, field: 'cardLimit', 'error')} required">
				<label for="cardLimit" class="control-label"><g:message code="creditCard.cardLimit.label" default="Card Limit" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="cardLimit" required="" value="${creditCardInstance.cardLimit}"/>
					<span class="help-inline">${hasErrors(bean: creditCardInstance, field: 'cardLimit', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: creditCardInstance, field: 'cardPay', 'error')} required">
				<label for="cardPay" class="control-label"><g:message code="creditCard.cardPay.label" default="Card Pay" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="cardPay" precision="day"  value="${creditCardInstance?.cardPay}"  />
					<span class="help-inline">${hasErrors(bean: creditCardInstance, field: 'cardPay', 'error')}</span>
				</div>
			</div>

