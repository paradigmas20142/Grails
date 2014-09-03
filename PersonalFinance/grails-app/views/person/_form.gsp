<%@ page import="personalfinance.user.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="person.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${personInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="person.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${personInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="person.address.label" default="Endereço" />
		
	</label>
	<g:textField name="address" value="${personInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'financialSituation', 'error')} ">
	<label for="financialSituation">
		<g:message code="person.financialSituation.label" default="Situação Financeira" />
		
	</label>
	<g:textField name="financialSituation" value="${personInstance?.financialSituation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="person.name.label" default="Nome" />
		
	</label>
	<g:textField name="name" value="${personInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="person.phone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phone" type="number" value="${personInstance.phone}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'salary', 'error')} required">
	<label for="salary">
		<g:message code="person.salary.label" default="Salário" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salary" type="number" value="${personInstance.salary}" required=""/>
</div>

