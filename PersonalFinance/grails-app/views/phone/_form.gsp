<%@ page import="personalfinance.accounts.Phone" %>



<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="phone.spentTotal.label" default="Valor Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${phoneInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="phone.dueDate.label" default="Data de Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${phoneInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="phone.formPayment.label" default="Forma de Pagamento" />
		
	</label>
	<g:textField name="formPayment" value="Dinheiro"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'paymentDate', 'error')} required">
	<label for="paymentDate">
		<g:message code="phone.paymentDate.label" default="Data de Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paymentDate" precision="day"  value="${phoneInstance?.paymentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="phone.reasonExpense.label" default="Motivo do gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="Conta de Telefone"/>
</div>

