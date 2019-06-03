<%@page import="com.getsocio.Role"%>
<%@ page import="com.getsocio.Tag"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="userlayout">
<g:set var="entityName"
	value="${message(code: 'tag.label', default: 'Tag')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<g:if test="${session.getAttribute('role').equals(Role.ADMIN) }">
		<a href="#create-taggingOfUser" class="skip" tabindex="-1"><g:message
				code="default.link.skip.label" default="Skip to content&hellip;" /></a>
		<div id="create-taggingOfUser" class="content scaffold-create"
			role="main">
			<h1>
				<g:message code="default.create.label" args="[entityName]" />
			</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<g:hasErrors bean="${taggingOfUserInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${taggingOfUserInstance}" var="error">
						<li
							<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
								error="${error}" /></li>
					</g:eachError>
				</ul>
			</g:hasErrors>
			<g:form action="save">
				<fieldset class="form">
					<g:render template="form" />
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save"
						value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</g:if>
	<g:if test="${session.getAttribute('role').equals(Role.USER) }">
		<div style="margin: 10px 10px 10px 20px">Sorry you do not have
			access to this page.</div>

	</g:if>
</body>
</html>
