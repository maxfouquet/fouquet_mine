<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Accueil" nav="mine">
	<jsp:attribute name="content">
	
	   <!-- Main Area -->
	  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  
		    <!-- Main Content -->
	       <div class="container">
		       <h1>CNAM - Exploitation Mini�re</h1>
		       <p>L'exploitation mani�re du CNAM est charg�e d'exploiter des gisements de min�raux pr�cieux ou de gaz �nerg�tique.</p>
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
			   <h3>Les �quipes</h3>
	           <p>Voir la liste des �quipes : <a href="<c:url value="/mine"><c:param name="action" value="listEquipe"/></c:url>">Cliquer ici</a></p>
	       </div>
	       
	       <div class="container">
			   <h3>Les mod�les de robot</h3>
	           <p>Voir la liste des mod�les : <a href="<c:url value="/mine"><c:param name="action" value="listModele"/></c:url>">Cliquer ici</a></p>
	       </div>
	       
       </div>
	</jsp:attribute>
</t:base>