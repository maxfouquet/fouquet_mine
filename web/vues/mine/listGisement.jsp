<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Gisements" nav="mine">
	<jsp:attribute name="content">
	
		<!-- Main Area -->
	  	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  	
	  	    <ol class="breadcrumb">
			  <li class="breadcrumb-item"><a href='<c:url value="/accueil"/>'>Accueil</a></li>
			  <li class="breadcrumb-item"><a href='<c:url value="/mine"/>'>Mine</a></li>
			  <li class="breadcrumb-item active">Liste des gisements</a></li>
			</ol>
	  	
			<!-- Main Content -->
		    <div class="container">
			    <h3>Gisements</h3>
                <table class="table">
	              	<thead>
	              		<tr>
	              			<th>Numéro</th>
	              			<th>Type</th>
	              			<th>Date d'affection équipe</th>
	              			<th>Rendement</th>
							<th>Coefficient de pureté</th>
							<th>Densité</th>
	              			<th>Revenu</th>
	              			<th>Rentabilité</th>
	              		</tr>
	              	</thead>
					<c:forEach items="${requestScope.gisements}" var="gisement">
						<tr>
							<td><c:out value="${gisement[0].id}" /></td>
							<td><c:out value="${gisement[0].getClass().getSimpleName()}" /></td>
							<td><c:out value="${gisement[0].dateMiseService}" /></td>
						    <td><c:out value="${gisement[0].rendement}" /></td>
						    <td><c:out value="${gisement[0].getClass().getSimpleName() == 'HzK2' ? gisement[0].coefficientPurete : 'N/A'}"></c:out></td>
							<td><c:out value="${gisement[0].getClass().getSimpleName() == 'Bouzon' ? gisement[0].densite : 'N/A'}"></c:out></td>
						    <td><c:out value="${gisement[0].revenu()}" /></td>
						    <td><c:out value="${gisement[0].calculRentabilite()}" /></td>
						</tr>
					</c:forEach>
			    </table>
		    </div>
	    </div>
	</jsp:attribute>
</t:base>