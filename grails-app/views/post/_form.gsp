<%@ page import="codemotion2013.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="post.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${postInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'created', 'error')} required">
	<label for="created">
		<g:message code="post.created.label" default="Created" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="created" precision="day"  value="${postInstance?.created}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'previous', 'error')} required">
	<label for="previous">
		<g:message code="post.previous.label" default="Previous" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="previous" name="previous.id" from="${codemotion2013.Post.list()}" optionKey="id" required="" value="${postInstance?.previous?.id}" class="many-to-one"/>
</div>

