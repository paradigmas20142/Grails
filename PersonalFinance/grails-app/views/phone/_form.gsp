<%@ page import="personalfinance.accounts.Phone" %>



			<div class="control-group fieldcontain ${hasErrors(bean: phoneInstance, field: 'spentTotal', 'error')} ">
				<label for="spentTotal" class="control-label"><g:message code="phone.spentTotal.label" default="Spent Total" /></label>
				<div class="controls">
					<g:field type="number" name="spentTotal" value="${phoneInstance.spentTotal}"/>
					<span class="help-inline">${hasErrors(bean: phoneInstance, field: 'spentTotal', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: phoneInstance, field: 'dueDate', 'error')} required">
				<label for="dueDate" class="control-label"><g:message code="phone.dueDate.label" default="Due Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="dueDate" precision="day"  value="${phoneInstance?.dueDate}"  />
					<span class="help-inline">${hasErrors(bean: phoneInstance, field: 'dueDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: phoneInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="phone.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="Money" readonly="readonly"/>
					<span class="help-inline">${hasErrors(bean: phoneInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: phoneInstance, field: 'paymentDate', 'error')} required">
				<label for="paymentDate" class="control-label"><g:message code="phone.paymentDate.label" default="Payment Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="paymentDate" precision="day"  value="${phoneInstance?.paymentDate}"  />
					<span class="help-inline">${hasErrors(bean: phoneInstance, field: 'paymentDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: phoneInstance, field: 'reasonExpense', 'error')} ">
				<label for="reasonExpense" class="control-label"><g:message code="phone.reasonExpense.label" default="Reason Expense" /></label>
				<div class="controls">
					<g:textField name="reasonExpense" value="Account of phone" readonly="readonly"/>
					<span class="help-inline">${hasErrors(bean: phoneInstance, field: 'reasonExpense', 'error')}</span>
				</div>
			</div>

