<%@ page import="personalfinance.accounts.MobilePhone" %>



			<div class="control-group fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'spentTotal', 'error')} ">
				<label for="spentTotal" class="control-label"><g:message code="mobilePhone.spentTotal.label" default="Spent Total" /></label>
				<div class="controls">
					<g:field type="number" name="spentTotal" value="${mobilePhoneInstance.spentTotal}"/>
					<span class="help-inline">${hasErrors(bean: mobilePhoneInstance, field: 'spentTotal', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'dueDate', 'error')} required">
				<label for="dueDate" class="control-label"><g:message code="mobilePhone.dueDate.label" default="Due Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="dueDate" precision="day"  value="${mobilePhoneInstance?.dueDate}"  />
					<span class="help-inline">${hasErrors(bean: mobilePhoneInstance, field: 'dueDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="mobilePhone.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="${mobilePhoneInstance?.formPayment}"/>
					<span class="help-inline">${hasErrors(bean: mobilePhoneInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'paymentDate', 'error')} required">
				<label for="paymentDate" class="control-label"><g:message code="mobilePhone.paymentDate.label" default="Payment Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="paymentDate" precision="day"  value="${mobilePhoneInstance?.paymentDate}"  />
					<span class="help-inline">${hasErrors(bean: mobilePhoneInstance, field: 'paymentDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'reasonExpense', 'error')} ">
				<label for="reasonExpense" class="control-label"><g:message code="mobilePhone.reasonExpense.label" default="Reason Expense" /></label>
				<div class="controls">
					<g:textField name="reasonExpense" value="${mobilePhoneInstance?.reasonExpense}"/>
					<span class="help-inline">${hasErrors(bean: mobilePhoneInstance, field: 'reasonExpense', 'error')}</span>
				</div>
			</div>

