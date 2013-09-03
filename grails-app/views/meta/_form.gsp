<%@ page import="estrelas.Meta" %>



<div class="fieldcontain ${hasErrors(bean: metaInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="meta.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${metaInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: metaInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="meta.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${metaInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: metaInstance, field: 'priority', 'error')} ">
	<label for="priority">
		<g:message code="meta.priority.label" default="Priority" />
		
	</label>
	<g:textField name="priority" value="${metaInstance?.priority}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: metaInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="meta.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${metaInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: metaInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="meta.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${metaInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: metaInstance, field: 'completedDate', 'error')} ">
	<label for="completedDate">
		<g:message code="meta.completedDate.label" default="Completed Date" />
		
	</label>
	<g:datePicker name="completedDate" precision="day"  value="${metaInstance?.completedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: metaInstance, field: 'dueDate', 'error')} ">
	<label for="dueDate">
		<g:message code="meta.dueDate.label" default="Due Date" />
		
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${metaInstance?.dueDate}" default="none" noSelection="['': '']" />
</div>

