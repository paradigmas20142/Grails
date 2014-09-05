<%@ page import="personalfinance.leisure.Theater" %>


			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'data', 'error')} required">
				<label for="data" class="control-label"><g:message code="theater.data.label" default="Data" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="data" precision="day"  value="${theaterInstance?.data}"  />
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'data', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'formPayment', 'error')} ">
				<label for="formPayment" class="control-label"><g:message code="theater.formPayment.label" default="Form Payment" /></label>
				<div class="controls">
					<g:textField name="formPayment" value="${theaterInstance?.formPayment}"/>
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'formPayment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'place', 'error')} ">
				<label for="place" class="control-label"><g:message code="theater.place.label" default="Place" /></label>
				<div class="controls">
					<g:textField name="place" value="${theaterInstance?.place}"/>
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'place', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'playName', 'error')} ">
				<label for="playName" class="control-label"><g:message code="theater.playName.label" default="Play Name" /></label>
				<div class="controls">
					<g:textField name="playName" value="${theaterInstance?.playName}"/>
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'playName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: theaterInstance, field: 'spentPlay', 'error')} required">
				<label for="spentPlay" class="control-label"><g:message code="theater.spentPlay.label" default="Spent Play" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="spentPlay" required="" value="${theaterInstance.spentPlay}"/>
					<span class="help-inline">${hasErrors(bean: theaterInstance, field: 'spentPlay', 'error')}</span>
				</div>
			</div>

