<%@ page import="personalfinance.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="person.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${personalfinance.User.list()}" optionKey="id" value="${personInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'adress', 'error')} ">
	<label for="adress">
		<g:message code="person.adress.label" default="Adress" />
		
	</label>
	<g:textField name="adress" value="${personInstance?.adress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'financeSit', 'error')} ">
	<label for="financeSit">
		<g:message code="person.financeSit.label" default="Finance Sit" />
		
	</label>
	<g:textField name="financeSit" value="${personInstance?.financeSit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="person.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${personInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="person.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" value="${personInstance.number}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'salary', 'error')} required">
	<label for="salary">
		<g:message code="person.salary.label" default="Salary" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salary" type="number" value="${personInstance.salary}" required=""/>
</div>

