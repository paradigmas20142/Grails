<%@ page import="personalfinance.Culture" %>



<div class="fieldcontain ${hasErrors(bean: cultureInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="culture.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${cultureInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cultureInstance, field: 'spentMovie', 'error')} ">
	<label for="spentMovie">
		<g:message code="culture.spentMovie.label" default="Spent Movie" />
		
	</label>
	<g:field name="spentMovie" type="number" value="${cultureInstance.spentMovie}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cultureInstance, field: 'spentTheater', 'error')} ">
	<label for="spentTheater">
		<g:message code="culture.spentTheater.label" default="Spent Theater" />
		
	</label>
	<g:field name="spentTheater" type="number" value="${cultureInstance.spentTheater}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cultureInstance, field: 'book', 'error')} ">
	<label for="book">
		<g:message code="culture.book.label" default="Book" />
		
	</label>
	<g:select id="book" name="book.id" from="${personalfinance.Book.list()}" optionKey="id" value="${cultureInstance?.book?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cultureInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="culture.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${cultureInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cultureInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="culture.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${cultureInstance?.reasonExpense}"/>
</div>

