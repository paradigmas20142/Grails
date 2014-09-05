<%@ page import="personalfinance.Helth" %>
<g:javascript library="application"/>
<r:require module="jquery-ui"/>


<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="helth.reasonExpense.label" default="Motivo do Gasto" />
		
	</label>
	<g:textField name="reasonExpense" value="${helthInstance?.reasonExpense}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'formaPagamento', 'error')} ">
<div class = "payment">
<label>Forma de pagamento</label>

<label class="money">Dinheiro&nbsp
<g:radio name="formPayment" value="money" />
</label>

<label class="creditcard">Cartão&nbsp

<g:radio name="formPayment" value="card" id = "credicard"/>
</label>

<label class="check">Cheque&nbsp
<g:radio name="formPayment" value="check" />
</label>


<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'creditcard', 'error')} ">
<label for="creditcard">
<g:message code="helth.creditcard.label" default="CreditCard" />

</label>
<g:select id="creditcard" name="creditCard.id" from="${personalfinance.CreditCard.list()}" optionKey="id" value="${helthInstance?.creditCard?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: helthInstance, field: 'spentOnMedicine', 'error')} ">
<div class = "medicine">
<label>Comprou remedio?</label>

<label class="buyMedicine">Sim&nbsp
<g:radio name="medicine" value="1" />
</label>

<label class="dontBuyMedicine">Não&nbsp
<g:radio name="medicine" value="2"  checked = "checked" />
</label>
</div>

<div class = "hospitalType">
<label>Rede do Hospital</label>

<label class="privateHospital">Particular&nbsp
<g:radio name="hospitalType" value="private" />
</label>

<label class="publicHospital">Publico&nbsp
<g:radio name="hospitalType" value="public"  checked = "checked" />
</label>
</div>
</div>

