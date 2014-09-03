<%@ page import="personalfinance.Education" %>



<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'spentTotal', 'error')} ">
	<label for="spentTotal">
		<g:message code="education.spentTotal.label" default="Spent Total" />
		
	</label>
	<g:field name="spentTotal" type="number" value="${educationInstance.spentTotal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'spentTuition', 'error')} ">
	<label for="spentTuition">
		<g:message code="education.spentTuition.label" default="Spent Tuition" />
		
	</label>
	<g:field name="spentTuition" type="number" value="${educationInstance.spentTuition}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'book', 'error')} ">
	<label for="book">
		<g:message code="education.book.label" default="Book" />
		
	</label>
	<g:select id="book" name="book.id" from="${personalfinance.Book.list()}" optionKey="id" value="${educationInstance?.book?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'formPayment', 'error')} ">
	<label for="formPayment">
		<g:message code="education.formPayment.label" default="Form Payment" />
		
	</label>
	<g:textField name="formPayment" value="${educationInstance?.formPayment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'reasonExpense', 'error')} ">
	<label for="reasonExpense">
		<g:message code="education.reasonExpense.label" default="Reason Expense" />
		
	</label>
	<g:textField name="reasonExpense" value="${educationInstance?.reasonExpense}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'typeOfEducation', 'error')} ">
	<label for="typeOfEducation">
		<g:message code="education.typeOfEducation.label" default="Type Of Education" />
		
	</label>
	<g:textField name="typeOfEducation" value="${educationInstance?.typeOfEducation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'typeOfInstitution', 'error')} ">
	<label for="typeOfInstitution">
		<g:message code="education.typeOfInstitution.label" default="Type Of Institution" />
		
	</label>
	<g:textField name="typeOfInstitution" value="${educationInstance?.typeOfInstitution}"/>
</div>

