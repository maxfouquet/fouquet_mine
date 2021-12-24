<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Gisement">
	<jsp:attribute name="content">
		
		<!-- Main Area -->
	  	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  	
	  	    <ol class="breadcrumb">
			  <li class="breadcrumb-item"><a href='<c:url value="/accueil"/>'>Accueil</a></li>
			  <li class="breadcrumb-item"><a href='<c:url value="/mine"/>'>Mine</a></li>
			  <li class="breadcrumb-item"><a href='<c:url value="/mine"><c:param name="action" value="listGisement"/></c:url>'>Liste des gisements</a></li>
			  <li class="breadcrumb-item active">Gisement <c:out value="${requestScope.gisement.id}" /></li>
			</ol>
			
			<!-- Main Content -->
		    <div class="container">
			    <h3>Gisement <c:out value="${requestScope.gisement.id}" /></h3>
			    <p><span class="badge bg-primary"><c:out value="${requestScope.gisement.getClass().getSimpleName()}" /></span></p>
			    <p><b>Date de mise en service</b> : <c:out value="${requestScope.gisement.dateMiseService}" /></p>
			    <p><b>Rendement</b> : <c:out value="${requestScope.gisement.rendement}" /></p>
			    <c:if test="${requestScope.gisement.getClass().getSimpleName() == 'HzK2'}">
			    	<p><b>Coefficient de pureté</b> : <c:out value="${requestScope.gisement.coefficientPurete}" /></p>
			    </c:if>
			    <c:if test="${requestScope.gisement.getClass().getSimpleName() == 'Bouzon'}">
			    	<p><b>Densité</b> : <c:out value="${requestScope.gisement.densite}" /></p>
			    </c:if>
		    	<p><b>Revenu</b> : <c:out value="${requestScope.gisement.revenu()}" /></p>
		    	<p><b>Rentabilité</b> : <c:out value="${requestScope.gisement.calculRentabilite()}" /></p>
			</div>
			
		</div>
		
	</jsp:attribute>
</t:base>