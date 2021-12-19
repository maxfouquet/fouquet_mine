<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Ouvriers" nav="mine">
	<jsp:attribute name="content">
	
		<!-- Main Area -->
	  	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  	
			<!-- Main Content -->
		    <div class="container">
			    <h3>Ouvriers</h3>
                <table class="table">
	              	<thead>
	              		<tr>
	              			<th>Num�ro</th>
	              			<th>Nom</th>
	              			<th>Type</th>
	              			<th>Date d'affectation �quipe</th>
	              			<th>Num�ro de s�rie</th>
							<th>Salaire</th>
						    <th>Cout</th>
						    <th>Mod�le</th>
						    <th>Equipe</th>
	              		</tr>
	              	</thead>
					<c:forEach items="${requestScope.ouvriers}" var="ouvrier">
						<tr>
							<td><c:out value="${ouvrier[0].id}" /></td>
							<td><c:out value="${ouvrier[0].nom}" /></td>
							<td><c:out value="${ouvrier[0].getClass().getSimpleName()}" /></td>
							<td><c:out value="${ouvrier[0].dateAffectationEquipe}" /></td>
						    <td><c:out value="${ouvrier[0].getClass().getSimpleName() == 'Robot' ? ouvrier[0].numeroSerie : 'N/A'}"></c:out></td>
						    <td><c:out value="${ouvrier[0].getClass().getSimpleName() == 'Humain' ? ouvrier[0].salaire : 'N/A'}"></c:out></td>
						    <td><c:out value="${ouvrier[0].cout()}" /></td>
						    <td><c:out value="${ouvrier[0].getClass().getSimpleName() == 'Robot' ? ouvrier[1].id : 'N/A'}"></c:out></td>
						    <td><c:out value="${ouvrier[2].nom}"></c:out></td>
						</tr>
					</c:forEach>
			    </table>
		    </div>
	    </div>
	</jsp:attribute>
</t:base>