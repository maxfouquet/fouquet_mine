<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Accueil" nav="mine">
	<jsp:attribute name="content">
	
	   <!-- Main Area -->
	  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  
		    <!-- Main Content -->
	       <div class="container">
		       <h1>CNAM - Exploitation Minière</h1>
		       <p>L'exploitation manière du CNAM est chargée d'exploiter des gisements de minéraux précieux ou de gaz énergétique.</p>
	       </div>
	       
	       <div class="container">
			   <h3>Les gisements</h3>
	           <p>Voir la liste des gisements : <a href="<c:url value="/mine"><c:param name="action" value="listGisement"/></c:url>">Cliquer ici</a></p>
	       </div>
	       
	       <div class="container">
			   <h3>Les ouvriers</h3>
	           <p>Voir la liste des ouvriers : <a href="<c:url value="/mine"><c:param name="action" value="listOuvrier"/></c:url>">Cliquer ici</a></p>
	       </div>
	       
	       <div class="container">
			   <h3>Les équipes</h3>
	           <p>Voir la liste des équipes : <a href="<c:url value="/mine"><c:param name="action" value="listEquipe"/></c:url>">Cliquer ici</a></p>
	       </div>
	       
	       <div class="container">
			   <h3>Les modèles de robot</h3>
	           <p>Voir la liste des modèles : <a href="<c:url value="/mine"><c:param name="action" value="listModele"/></c:url>">Cliquer ici</a></p>
	       </div>
	       
       </div>
	</jsp:attribute>
</t:base>