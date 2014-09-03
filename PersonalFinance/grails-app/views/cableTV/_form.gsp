<%@ page import="personalfinance.accounts.CableTV" %>



<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="cableTV.spentTotal.label" default="Valor Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${cableTVInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="cableTV.dueDate.label" default="Data de Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${cableTVInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="cableTV.formPayment.label" default="Forma de Pagamento" />
		
	</label>
	<g:textField name="formPayment" value="Dinheiro"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'paymentDate', 'error')} required">
	<label for="paymentDate">
		<g:message code="cableTV.paymentDate.label" default="Data do Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paymentDate" precision="day"  value="${cableTVInstance?.paymentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: cableTVInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="cableTV.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="TV a cabo"/>
</div>

