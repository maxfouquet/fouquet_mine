<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Ouvrier">
	<jsp:attribute name="content">
		
		<!-- Main Area -->
	  	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  	
	  	    <ol class="breadcrumb">
			  <li class="breadcrumb-item"><a href='<c:url value="/accueil"/>'>Accueil</a></li>
			  <li class="breadcrumb-item"><a href='<c:url value="/mine"/>'>Mine</a></li>
			  <li class="breadcrumb-item"><a href='<c:url value="/mine"><c:param name="action" value="listOuvrier"/></c:url>'>Liste des ouvriers</a></li>
			  <li class="breadcrumb-item active">Ouvrier <c:out value="${requestScope.ouvrier.id}" /></li>
			</ol>
			
			<!-- Main Content -->
		    <div class="container">
			    <h3>Ouvrier ${requestScope.ouvrier.id}</h3>
			    <p><span class="badge bg-primary"><c:out value="${requestScope.ouvrier.getClass().getSimpleName()}" /></span></p>
			    <p><b>Nom</b> : <c:out value="${requestScope.ouvrier.nom}" /></p>
			    <p><b>Date affectation à l'équipe</b> : <c:out value="${requestScope.ouvrier.dateAffectationEquipe}" /></p>
			    <c:if test="${requestScope.ouvrier.getClass().getSimpleName() == 'Robot'}">
			    	<p><b>Numéro de série</b> : <c:out value="${requestScope.ouvrier.numeroSerie}" /></p>
			    </c:if>
			    <c:if test="${requestScope.ouvrier.getClass().getSimpleName() == 'Humain'}">
			    	<p><b>Salaire</b> : <c:out value="${requestScope.ouvrier.salaire}" /></p>
			    </c:if>
			    <p><b>Coût</b> : <c:out value="${requestScope.ouvrier.cout()}" /></p>
			    <c:if test="${requestScope.ouvrier.getClass().getSimpleName() == 'Robot'}">
			    	<p><b>Modèle</b> : <c:out value="${requestScope.ouvrier.modele.id}" /></p>
			    </c:if>
			    <p><b>Equipe</b> : <c:out value="${requestScope.ouvrier.equipe.nom}" /></p>
			</div>
			
		</div>
		
	</jsp:attribute>
</t:base>