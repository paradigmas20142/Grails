<%@ page import="personalfinance.leisure.Movie" %>



			<div class="control-group fieldcontain ${hasErrors(bean: movieInstance, field: 'spentTotal', 'error')} ">
				<label for="spentTotal" class="control-label"><g:message code="movie.spentTotal.label" default="Spent Total" /></label>
				<div class="controls">
					<g:field type="number" name="spentTotal" value="${movieInstance.spentTotal}"/>
					<span class="help-inline">${hasErrors(bean: movieInstance, field: 'spentTotal', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: movieInstance, field: 'data', 'error')} required">
				<label for="data" class="control-label"><g:message code="movie.data.label" default="Data" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="data" precision="day"  value="${movieInstance?.data}"  />
					<span class="help-inline">${hasErrors(bean: movieInstance, field: 'data', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: movieInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="movie.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="${movieInstance?.formPayment}"/>
					<span class="help-inline">${hasErrors(bean: movieInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: movieInstance, field: 'movieName', 'error')} ">
				<label for="movieName" class="control-label"><g:message code="movie.movieName.label" default="Movie Name" /></label>
				<div class="controls">
					<g:textField name="movieName" value="${movieInstance?.movieName}"/>
					<span class="help-inline">${hasErrors(bean: movieInstance, field: 'movieName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: movieInstance, field: 'place', 'error')} ">
				<label for="place" class="control-label"><g:message code="movie.place.label" default="Place" /></label>
				<div class="controls">
					<g:textField name="place" value="${movieInstance?.place}"/>
					<span class="help-inline">${hasErrors(bean: movieInstance, field: 'place', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: movieInstance, field: 'reasonExpense', 'error')} ">
				<label for="reasonExpense" class="control-label"><g:message code="movie.reasonExpense.label" default="Reason Expense" /></label>
				<div class="controls">
					<g:textField name="reasonExpense" value="${movieInstance?.reasonExpense}"/>
					<span class="help-inline">${hasErrors(bean: movieInstance, field: 'reasonExpense', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: movieInstance, field: 'spentTicket', 'error')} required">
				<label for="spentTicket" class="control-label"><g:message code="movie.spentTicket.label" default="Spent Ticket" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="spentTicket" required="" value="${movieInstance.spentTicket}"/>
					<span class="help-inline">${hasErrors(bean: movieInstance, field: 'spentTicket', 'error')}</span>
				</div>
			</div>

