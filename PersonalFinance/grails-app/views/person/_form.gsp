<%@ page import="personalfinance.user.Person" %>



			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="person.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="username" required="" value="${personInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="person.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:passwordField name="password" required="" value="${personInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'address', 'error')} ">
				<label for="address" class="control-label"><g:message code="person.address.label" default="Address" /></label>
				<div class="controls">
					<g:textField name="address" value="${personInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'financialSituation', 'error')} ">
				<label for="financialSituation" class="control-label"><g:message code="person.financialSituation.label" default="Financial Situation" /></label>
				<div class="controls">
					<g:textField name="financialSituation" value="${personInstance?.financialSituation}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'financialSituation', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="person.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${personInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'phone', 'error')} required">
				<label for="phone" class="control-label"><g:message code="person.phone.label" default="Phone" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="phone" required="" value="${personInstance.phone}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'phone', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'salary', 'error')} required">
				<label for="salary" class="control-label"><g:message code="person.salary.label" default="Salary" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="salary" required="" value="${personInstance.salary}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'salary', 'error')}</span>
				</div>
			</div>

