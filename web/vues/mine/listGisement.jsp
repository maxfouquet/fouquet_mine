<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Gisements" nav="mine">
	<jsp:attribute name="content">
	
		<!-- Main Area -->
	  	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  	
			<!-- Main Content -->
		    <div class="container">
			    <h3>Gisements</h3>
                <table class="table">
	              	<thead>
	              		<tr>
	              			<th>Nom</th>
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
							<td><c:out value="${gisement.id}" /></td>
							<td><c:out value="${gisement.getClass().getSimpleName()}" /></td>
							<td><c:out value="${gisement.dateMiseService}" /></td>
						    <td><c:out value="${gisement.rendement}" /></td>
						    <td><c:out value="${gisement.getClass().getSimpleName() == 'HzK2' ? gisement.coefficientPurete : 'N/A'}"></c:out></td>
							<td><c:out value="${gisement.getClass().getSimpleName() == 'Bouzon' ? gisement.densite : 'N/A'}"></c:out></td>
						    <td><c:out value="${gisement.revenu()}" /></td>
						    <td><c:out value="${gisement.calculRentabilite()}" /></td>
						</tr>
					</c:forEach>
			    </table>
		    </div>
	    </div>
	</jsp:attribute>
</t:base>