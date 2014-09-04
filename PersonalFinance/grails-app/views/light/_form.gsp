<%@ page import="personalfinance.accounts.Light" %>



			<div class="control-group fieldcontain ${hasErrors(bean: lightInstance, field: 'spentTotal', 'error')} ">
				<label for="spentTotal" class="control-label"><g:message code="light.spentTotal.label" default="Spent Total" /></label>
				<div class="controls">
					<g:field type="number" name="spentTotal" value="${lightInstance.spentTotal}"/>
					<span class="help-inline">${hasErrors(bean: lightInstance, field: 'spentTotal', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: lightInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="light.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="Money" readonly="readonly"/>
					<span class="help-inline">${hasErrors(bean: lightInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: lightInstance, field: 'reasonExpense', 'error')} ">
				<label for="reasonExpense" class="control-label"><g:message code="light.reasonExpense.label" default="Reason Expense" /></label>
				<div class="controls">
					<g:textField name="reasonExpense" value="Account of Light" readonly="readonly"/>
					<span class="help-inline">${hasErrors(bean: lightInstance, field: 'reasonExpense', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: lightInstance, field: 'dueDate', 'error')} required">
				<label for="dueDate" class="control-label"><g:message code="light.dueDate.label" default="Due Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="dueDate" precision="day"  value="${lightInstance?.dueDate}"  />
					<span class="help-inline">${hasErrors(bean: lightInstance, field: 'dueDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: lightInstance, field: 'paymentDate', 'error')} required">
				<label for="paymentDate" class="control-label"><g:message code="light.paymentDate.label" default="Payment Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="paymentDate" precision="day"  value="${lightInstance?.paymentDate}"  />
					<span class="help-inline">${hasErrors(bean: lightInstance, field: 'paymentDate', 'error')}</span>
				</div>
			</div>

