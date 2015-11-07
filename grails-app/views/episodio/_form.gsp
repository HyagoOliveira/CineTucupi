<%@ page import="com.multimidia.Episodio" %>



<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="episodio.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${episodioInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'ator', 'error')} ">
	<label for="ator">
		<g:message code="episodio.ator.label" default="Ator" />
		
	</label>
	<g:select id="ator" name="ator.id" from="${com.cadastro.Ator.list()}" optionKey="id" value="${episodioInstance?.ator?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'data', 'error')} ">
	<label for="data">
		<g:message code="episodio.data.label" default="Data" />
		
	</label>
	<g:datePicker name="data" precision="day"  value="${episodioInstance?.data}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'diretor', 'error')} ">
	<label for="diretor">
		<g:message code="episodio.diretor.label" default="Diretor" />
		
	</label>
	<g:select id="diretor" name="diretor.id" from="${com.cadastro.Diretor.list()}" optionKey="id" value="${episodioInstance?.diretor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'estudio', 'error')} ">
	<label for="estudio">
		<g:message code="episodio.estudio.label" default="Estudio" />
		
	</label>
	<g:select id="estudio" name="estudio.id" from="${com.cadastro.Estudio.list()}" optionKey="id" value="${episodioInstance?.estudio?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'generos', 'error')} ">
	<label for="generos">
		<g:message code="episodio.generos.label" default="Generos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${episodioInstance?.generos?}" var="g">
    <li><g:link controller="genero" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="genero" action="create" params="['episodio.id': episodioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'genero.label', default: 'Genero')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'legendas', 'error')} ">
	<label for="legendas">
		<g:message code="episodio.legendas.label" default="Legendas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${episodioInstance?.legendas?}" var="l">
    <li><g:link controller="arquivoLegenda" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="arquivoLegenda" action="create" params="['episodio.id': episodioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'arquivoLegenda.label', default: 'ArquivoLegenda')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="episodio.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${episodioInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'videos', 'error')} ">
	<label for="videos">
		<g:message code="episodio.videos.label" default="Videos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${episodioInstance?.videos?}" var="v">
    <li><g:link controller="arquivoVideo" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="arquivoVideo" action="create" params="['episodio.id': episodioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'arquivoVideo.label', default: 'ArquivoVideo')])}</g:link>
</li>
</ul>


</div>

