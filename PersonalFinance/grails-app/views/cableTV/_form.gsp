<%@ page import="personalfinance.accounts.CableTV" %>



			<div class="control-group fieldcontain ${hasErrors(bean: cableTVInstance, field: 'spentTotal', 'error')} ">
				<label for="spentTotal" class="control-label"><g:message code="cableTV.spentTotal.label" default="Spent Total" /></label>
				<div class="controls">
					<g:field type="number" name="spentTotal" value="${cableTVInstance.spentTotal}"/>
					<span class="help-inline">${hasErrors(bean: cableTVInstance, field: 'spentTotal', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: cableTVInstance, field: 'dueDate', 'error')} required">
				<label for="dueDate" class="control-label"><g:message code="cableTV.dueDate.label" default="Due Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="dueDate" precision="day"  value="${cableTVInstance?.dueDate}"  />
					<span class="help-inline">${hasErrors(bean: cableTVInstance, field: 'dueDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: cableTVInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="cableTV.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="${cableTVInstance?.formPayment}"/>
					<span class="help-inline">${hasErrors(bean: cableTVInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: cableTVInstance, field: 'paymentDate', 'error')} required">
				<label for="paymentDate" class="control-label"><g:message code="cableTV.paymentDate.label" default="Payment Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="paymentDate" precision="day"  value="${cableTVInstance?.paymentDate}"  />
					<span class="help-inline">${hasErrors(bean: cableTVInstance, field: 'paymentDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: cableTVInstance, field: 'reasonExpense', 'error')} ">
				<label for="reasonExpense" class="control-label"><g:message code="cableTV.reasonExpense.label" default="Reason Expense" /></label>
				<div class="controls">
					<g:textField name="reasonExpense" value="${cableTVInstance?.reasonExpense}"/>
					<span class="help-inline">${hasErrors(bean: cableTVInstance, field: 'reasonExpense', 'error')}</span>
				</div>
			</div>

