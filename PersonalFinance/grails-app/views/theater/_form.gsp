<%@ page import="personalfinance.leisure.Theater" %>



			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'spentTotal', 'error')} ">
				<label for="spentTotal" class="control-label"><g:message code="theater.spentTotal.label" default="Spent Total" /></label>
				<div class="controls">
					<g:field type="number" name="spentTotal" value="${theaterInstance.spentTotal}"/>
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'spentTotal', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'data', 'error')} required">
				<label for="data" class="control-label"><g:message code="theater.data.label" default="Data" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="data" precision="day"  value="${theaterInstance?.data}"  />
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'data', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="theater.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="${theaterInstance?.formPayment}"/>
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'place', 'error')} ">
				<label for="place" class="control-label"><g:message code="theater.place.label" default="Place" /></label>
				<div class="controls">
					<g:textField name="place" value="${theaterInstance?.place}"/>
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'place', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'reasonExpense', 'error')} ">
				<label for="reasonExpense" class="control-label"><g:message code="theater.reasonExpense.label" default="Reason Expense" /></label>
				<div class="controls">
					<g:textField name="reasonExpense" value="${theaterInstance?.reasonExpense}"/>
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'reasonExpense', 'error')}</span>
				</div>
			</div>

