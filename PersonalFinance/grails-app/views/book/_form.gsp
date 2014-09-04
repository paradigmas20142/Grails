<%@ page import="personalfinance.Book" %>



			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'education', 'error')} required">
				<label for="education" class="control-label"><g:message code="book.education.label" default="Education" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="education" name="education.id" from="${personalfinance.Education.list()}" optionKey="id" required="" value="${bookInstance?.education?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'education', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="book.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${bookInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'price', 'error')} required">
				<label for="price" class="control-label"><g:message code="book.price.label" default="Price" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="price" required="" value="${bookInstance.price}"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'price', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} ">
				<label for="publisher" class="control-label"><g:message code="book.publisher.label" default="Publisher" /></label>
				<div class="controls">
					<g:textField name="publisher" value="${bookInstance?.publisher}"/>
					<span class="help-inline">${hasErrors(bean: bookInstance, field: 'publisher', 'error')}</span>
				</div>
			</div>

