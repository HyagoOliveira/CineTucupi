
<%@ page import="com.multimidia.Episodio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'episodio.label', default: 'Episodio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-episodio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-episodio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list episodio">
			
				<g:if test="${episodioInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="episodio.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${episodioInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.ator}">
				<li class="fieldcontain">
					<span id="ator-label" class="property-label"><g:message code="episodio.ator.label" default="Ator" /></span>
					
						<span class="property-value" aria-labelledby="ator-label"><g:link controller="ator" action="show" id="${episodioInstance?.ator?.id}">${episodioInstance?.ator?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="episodio.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${episodioInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.diretor}">
				<li class="fieldcontain">
					<span id="diretor-label" class="property-label"><g:message code="episodio.diretor.label" default="Diretor" /></span>
					
						<span class="property-value" aria-labelledby="diretor-label"><g:link controller="diretor" action="show" id="${episodioInstance?.diretor?.id}">${episodioInstance?.diretor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.estudio}">
				<li class="fieldcontain">
					<span id="estudio-label" class="property-label"><g:message code="episodio.estudio.label" default="Estudio" /></span>
					
						<span class="property-value" aria-labelledby="estudio-label"><g:link controller="estudio" action="show" id="${episodioInstance?.estudio?.id}">${episodioInstance?.estudio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.generos}">
				<li class="fieldcontain">
					<span id="generos-label" class="property-label"><g:message code="episodio.generos.label" default="Generos" /></span>
					
						<g:each in="${episodioInstance.generos}" var="g">
						<span class="property-value" aria-labelledby="generos-label"><g:link controller="genero" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.legendas}">
				<li class="fieldcontain">
					<span id="legendas-label" class="property-label"><g:message code="episodio.legendas.label" default="Legendas" /></span>
					
						<g:each in="${episodioInstance.legendas}" var="l">
						<span class="property-value" aria-labelledby="legendas-label"><g:link controller="arquivoLegenda" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="episodio.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${episodioInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.videos}">
				<li class="fieldcontain">
					<span id="videos-label" class="property-label"><g:message code="episodio.videos.label" default="Videos" /></span>
					
						<g:each in="${episodioInstance.videos}" var="v">
						<span class="property-value" aria-labelledby="videos-label"><g:link controller="arquivoVideo" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:episodioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${episodioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
