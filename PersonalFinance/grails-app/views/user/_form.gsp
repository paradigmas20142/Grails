<%@ page import="personalfinance.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'login', 'error')} ">
	<label for="login">
		<g:message code="user.login.label" default="Login" />
		
	</label>
	<g:textField name="login" value="${userInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:passwordField name="password" value="${userInstance?.password}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="user.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${personalfinance.Person.list()}" optionKey="id" required="" value="${userInstance?.person?.id}" class="many-to-one"/>
</div>

