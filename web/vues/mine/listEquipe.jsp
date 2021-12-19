<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Equipes" nav="mine">
	<jsp:attribute name="content">
	
		<!-- Main Area -->
	  	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  	
	  	   <ol class="breadcrumb">
			  <li class="breadcrumb-item"><a href='<c:url value="/accueil"/>'>Accueil</a></li>
			  <li class="breadcrumb-item"><a href='<c:url value="/mine"/>'>Mine</a></li>
			  <li class="breadcrumb-item active">Liste des équipes</a></li>
			</ol>
	  	
			<!-- Main Content -->
		    <div class="container">
			    <h3>Equipes</h3>
                <table class="table">
	              	<thead>
	              		<tr>
	              			<th>Numéro</th>
	              			<th>Nom</th>
	              			<th>Gisement</th>
	              			<th>Chef d'équipe</th>
	              			<th>Coût</th>
	              		</tr>
	              	</thead>
					<c:forEach items="${requestScope.equipes}" var="equipe">
						<tr>
							<td><c:out value="${equipe[0].id}" /></td>
							<td><c:out value="${equipe[0].nom}" /></td>
							<td><c:out value="${equipe[0].gisement.id}" /></td>
							<td><c:out value="${equipe[0].ouvrier.nom}" /></td>
						    <td><c:out value="${equipe[0].cout()}" /></td>
						</tr>
					</c:forEach>
			    </table>
		    </div>
	    </div>
	</jsp:attribute>
</t:base>