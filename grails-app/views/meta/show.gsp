
<%@ page import="estrelas.Meta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meta.label', default: 'Meta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-meta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-meta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list meta">
			
				<g:if test="${metaInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="meta.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${metaInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${metaInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="meta.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${metaInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${metaInstance?.priority}">
				<li class="fieldcontain">
					<span id="priority-label" class="property-label"><g:message code="meta.priority.label" default="Priority" /></span>
					
						<span class="property-value" aria-labelledby="priority-label"><g:fieldValue bean="${metaInstance}" field="priority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${metaInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="meta.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${metaInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${metaInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="meta.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${metaInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${metaInstance?.completedDate}">
				<li class="fieldcontain">
					<span id="completedDate-label" class="property-label"><g:message code="meta.completedDate.label" default="Completed Date" /></span>
					
						<span class="property-value" aria-labelledby="completedDate-label"><g:formatDate date="${metaInstance?.completedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${metaInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="meta.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${metaInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${metaInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="meta.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="user" action="show" id="${metaInstance?.owner?.id}">${metaInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${metaInstance?.id}" />
					<g:link class="edit" action="edit" id="${metaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
