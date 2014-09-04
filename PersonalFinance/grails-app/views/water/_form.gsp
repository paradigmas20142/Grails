<%@ page import="personalfinance.accounts.Water" %>



			<div class="control-group fieldcontain ${hasErrors(bean: waterInstance, field: 'spentTotal', 'error')} ">
				<label for="spentTotal" class="control-label"><g:message code="water.spentTotal.label" default="Spent Total" /></label>
				<div class="controls">
					<g:field type="number" name="spentTotal" value="${waterInstance.spentTotal}"/>
					<span class="help-inline">${hasErrors(bean: waterInstance, field: 'spentTotal', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: waterInstance, field: 'dueDate', 'error')} required">
				<label for="dueDate" class="control-label"><g:message code="water.dueDate.label" default="Due Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="dueDate" precision="day"  value="${waterInstance?.dueDate}"  />
					<span class="help-inline">${hasErrors(bean: waterInstance, field: 'dueDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: waterInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="water.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="${waterInstance?.formPayment}"/>
					<span class="help-inline">${hasErrors(bean: waterInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: waterInstance, field: 'paymentDate', 'error')} required">
				<label for="paymentDate" class="control-label"><g:message code="water.paymentDate.label" default="Payment Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="paymentDate" precision="day"  value="${waterInstance?.paymentDate}"  />
					<span class="help-inline">${hasErrors(bean: waterInstance, field: 'paymentDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: waterInstance, field: 'reasonExpense', 'error')} ">
				<label for="reasonExpense" class="control-label"><g:message code="water.reasonExpense.label" default="Reason Expense" /></label>
				<div class="controls">
					<g:textField name="reasonExpense" value="${waterInstance?.reasonExpense}"/>
					<span class="help-inline">${hasErrors(bean: waterInstance, field: 'reasonExpense', 'error')}</span>
				</div>
			</div>

