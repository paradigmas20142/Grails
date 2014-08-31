<%@ page import="personalfinance.Helth" %>


<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'formaPagamento', 'error')} ">
<div class = "payment">
<label>Forma de pagamento</label>

<label class="money">Dinheiro&nbsp
<g:radio name="formPayment" value="money" />
</label>

<label class="creditcard">Cartão&nbsp

<g:radio name="formPayment" value="card" id = "_credicard"/>
</label>

<label class="check">Cheque&nbsp
<g:radio name="formPayment" value="check" />
</label>


<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="helth.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${helthInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'spentOnMedicine', 'error')} ">
	<label for="spentOnMedicine">
		<g:message code="helth.spentOnMedicine.label" default="Spent On Medicine" />
		
	</label>
	<g:field name="spentOnMedicine" type="number" value="${helthInstance.spentOnMedicine}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="helth.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${helthInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'hospitalType', 'error')} ">
	<label for="hospitalType">
		<g:message code="helth.hospitalType.label" default="Hospital Type" />
		
	</label>
	<g:textField name="hospitalType" value="${helthInstance?.hospitalType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="helth.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${helthInstance?.reasonExpense}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'spentOnConsult', 'error')} required">
	<label for="spentOnConsult">
		<g:message code="helth.spentOnConsult.label" default="Spent On Consult" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="spentOnConsult" type="number" value="${helthInstance.spentOnConsult}" required=""/>
</div>

