<%@ page import="personalfinance.accounts.MobilePhone" %>



<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="mobilePhone.spentTotal.label" default="Valor Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${mobilePhoneInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="mobilePhone.dueDate.label" default="Data de Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${mobilePhoneInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="mobilePhone.formPayment.label" default="Forma de Pagamento" />
		
	</label>
	<g:textField name="formPayment" value="Dinheiro"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'paymentDate', 'error')} required">
	<label for="paymentDate">
		<g:message code="mobilePhone.paymentDate.label" default="Data de Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paymentDate" precision="day"  value="${mobilePhoneInstance?.paymentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="mobilePhone.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="Conta de Celular"/>
</div>

