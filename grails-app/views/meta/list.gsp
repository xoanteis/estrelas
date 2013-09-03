
<%@ page import="estrelas.Meta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'meta.label', default: 'Meta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-meta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-meta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'meta.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="createdDate" title="${message(code: 'meta.createdDate.label', default: 'Created Date')}" />
					
						<g:sortableColumn property="priority" title="${message(code: 'meta.priority.label', default: 'Priority')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'meta.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'meta.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="completedDate" title="${message(code: 'meta.completedDate.label', default: 'Completed Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${metaInstanceList}" status="i" var="metaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${metaInstance.id}">${fieldValue(bean: metaInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${metaInstance.createdDate}" /></td>
					
						<td>${fieldValue(bean: metaInstance, field: "priority")}</td>
					
						<td>${fieldValue(bean: metaInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: metaInstance, field: "description")}</td>
					
						<td><g:formatDate date="${metaInstance.completedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${metaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
