<%@ page import="personalfinance.accounts.Internet" %>



			<div class="control-group fieldcontain ${hasErrors(bean: internetInstance, field: 'spentTotal', 'error')} ">
				<label for="spentTotal" class="control-label"><g:message code="internet.spentTotal.label" default="Spent Total" /></label>
				<div class="controls">
					<g:field type="number" name="spentTotal" value="${internetInstance.spentTotal}"/>
					<span class="help-inline">${hasErrors(bean: internetInstance, field: 'spentTotal', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: internetInstance, field: 'dueDate', 'error')} required">
				<label for="dueDate" class="control-label"><g:message code="internet.dueDate.label" default="Due Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="dueDate" precision="day"  value="${internetInstance?.dueDate}"  />
					<span class="help-inline">${hasErrors(bean: internetInstance, field: 'dueDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: internetInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="internet.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="${internetInstance?.formPayment}"/>
					<span class="help-inline">${hasErrors(bean: internetInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: internetInstance, field: 'paymentDate', 'error')} required">
				<label for="paymentDate" class="control-label"><g:message code="internet.paymentDate.label" default="Payment Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="paymentDate" precision="day"  value="${internetInstance?.paymentDate}"  />
					<span class="help-inline">${hasErrors(bean: internetInstance, field: 'paymentDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: internetInstance, field: 'reasonExpense', 'error')} ">
				<label for="reasonExpense" class="control-label"><g:message code="internet.reasonExpense.label" default="Reason Expense" /></label>
				<div class="controls">
					<g:textField name="reasonExpense" value="${internetInstance?.reasonExpense}"/>
					<span class="help-inline">${hasErrors(bean: internetInstance, field: 'reasonExpense', 'error')}</span>
				</div>
			</div>

