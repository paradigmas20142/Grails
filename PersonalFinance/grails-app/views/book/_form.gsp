<%@ page import="personalfinance.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'education', 'error')} required">
	<label for="education">
		<g:message code="book.education.label" default="Education" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="education" name="education.id" from="${personalfinance.Education.list()}" optionKey="id" required="" value="${bookInstance?.education?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="book.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${bookInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="book.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${bookInstance.price}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} ">
	<label for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />
		
	</label>
	<g:textField name="publisher" value="${bookInstance?.publisher}"/>
</div>

