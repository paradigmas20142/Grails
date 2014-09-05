<%@ page import="personalfinance.Education" %>



			<div class="control-group fieldcontain ${hasErrors(bean: educationInstance, field: 'spentTuition', 'error')} ">
				<label for="spentTuition" class="control-label"><g:message code="education.spentTuition.label" default="Spent Tuition" /></label>
				<div class="controls">
					<g:field type="number" name="spentTuition" value="${educationInstance.spentTuition}"/>
					<span class="help-inline">${hasErrors(bean: educationInstance, field: 'spentTuition', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: educationInstance, field: 'book', 'error')} ">
				<label for="book" class="control-label"><g:message code="education.book.label" default="Book" /></label>
				<div class="controls">
					<g:select id="book" name="book.id" from="${personalfinance.Book.list()}" optionKey="id" value="${educationInstance?.book?.id}" class="many-to-one" noSelection="['null': '']"/>
					<span class="help-inline">${hasErrors(bean: educationInstance, field: 'book', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: educationInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="education.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="${educationInstance?.formPayment}"/>
					<span class="help-inline">${hasErrors(bean: educationInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: educationInstance, field: 'reasonExpense', 'error')} ">
				<label for="reasonExpense" class="control-label"><g:message code="education.reasonExpense.label" default="Reason Expense" /></label>
				<div class="controls">
					<g:textField name="reasonExpense" value="${educationInstance?.reasonExpense}"/>
					<span class="help-inline">${hasErrors(bean: educationInstance, field: 'reasonExpense', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: educationInstance, field: 'typeOfEducation', 'error')} ">
				<label for="typeOfEducation" class="control-label"><g:message code="education.typeOfEducation.label" default="Type Of Education" /></label>
				<div class="controls">
					<g:textField name="typeOfEducation" value="${educationInstance?.typeOfEducation}"/>
					<span class="help-inline">${hasErrors(bean: educationInstance, field: 'typeOfEducation', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: educationInstance, field: 'typeOfInstitution', 'error')} ">
				<label for="typeOfInstitution" class="control-label"><g:message code="education.typeOfInstitution.label" default="Type Of Institution" /></label>
				<div class="controls">
					<g:textField name="typeOfInstitution" value="${educationInstance?.typeOfInstitution}"/>
					<span class="help-inline">${hasErrors(bean: educationInstance, field: 'typeOfInstitution', 'error')}</span>
				</div>
			</div>

