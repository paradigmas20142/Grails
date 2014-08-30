<%@ page import="financaspessoais.Saude" %>
<g:javascript library="application"/>
<r:require module="jquery-ui"/>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'formaPagamento', 'error')} ">
<div class = "payment">
<label>Forma de pagamento</label>

<label class="money">Dinheiro&nbsp
<g:radio name="formaPagamento" value="dinheiro" />
</label>

<label class="creditcard">Cartão&nbsp

<g:radio name="formaPagamento" value="cartão" id = "_credicard"/>
</label>

<label class="check">Cheque&nbsp
<g:radio name="formaPagamento" value="cheque" />
</label>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'cartao', 'error')} ">
<label for="cartao">
<g:message code="saude.cartao.label" default="Cartao" />

</label>
<g:select id="cartao" name="cartao.id" from="${financaspessoais.Cartao.list()}" optionKey="id" value="${saudeInstance?.cartao?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'motivoGasto', 'error')} ">
	<label for="motivoGasto">
		<g:message code="saude.motivoGasto.label" default="Motivo Gasto" />
		
	</label>
	<g:textField name="motivoGasto" value="${saudeInstance?.motivoGasto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: saudeInstance, field: 'planoSaude', 'error')} ">
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
<g:radio name="tipoHospital" value="particular" />
</label>

<label class="publicHospital">Publico&nbsp
<g:radio name="tipoHospital" value="publico"  checked = "checked" />
</label>
</div>
</label>
</div>
</div>
</div>
