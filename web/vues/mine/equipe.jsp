<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Equipe">
	<jsp:attribute name="content">
		
		<!-- Main Area -->
	  	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  	
	  	    <ol class="breadcrumb">
			  <li class="breadcrumb-item"><a href='<c:url value="/accueil"/>'>Accueil</a></li>
			  <li class="breadcrumb-item"><a href='<c:url value="/mine"/>'>Mine</a></li>
			  <li class="breadcrumb-item"><a href='<c:url value="/mine"><c:param name="action" value="listEquipe"/></c:url>'>Liste des équipes</a></li>
			  <li class="breadcrumb-item active">Equipe <c:out value="${requestScope.equipe.id}" /></li>
			</ol>
			
			<!-- Main Content -->
		    <div class="container">
			    <h3>Equipe <c:out value="${requestScope.equipe.id}" /></h3>
			    <p><b>Nom</b> : <c:out value="${requestScope.equipe.nom}" /></p>
			    <p><b>Chef d'équipe</b> : <c:out value="${requestScope.equipe.ouvrier.nom}" /></p>
			    <p><b>Coût</b> : <c:out value="${requestScope.equipe.cout()}" /></p>
			    <p><b>Gisement</b> : <c:out value="${requestScope.equipe.gisement.id}" /></p>
			    <b>Ouvriers</b> : 
			    <ul>
			    	<c:forEach items="${requestScope.equipe.ouvriers}" var="ouvrier">
			    		<li><c:out value="${ouvrier.nom}" /></li>
			    	</c:forEach>
			    </ul>
			</div>
			
		</div>
		
	</jsp:attribute>
</t:base>