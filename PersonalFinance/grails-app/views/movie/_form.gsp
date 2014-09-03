<%@ page import="personalfinance.leisure.Movie" %>



<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="movie.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${movieInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="movie.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${movieInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="movie.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${movieInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'movieName', 'error')} ">
	<label for="movieName">
		<g:message code="movie.movieName.label" default="Movie Name" />
		
	</label>
	<g:textField name="movieName" value="${movieInstance?.movieName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'place', 'error')} ">
	<label for="place">
		<g:message code="movie.place.label" default="Place" />
		
	</label>
	<g:textField name="place" value="${movieInstance?.place}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="movie.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${movieInstance?.reasonExpense}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'spentTicket', 'error')} required">
	<label for="spentTicket">
		<g:message code="movie.spentTicket.label" default="Spent Ticket" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="spentTicket" type="number" value="${movieInstance.spentTicket}" required=""/>
</div>

