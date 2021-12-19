<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Mine - Modèles" nav="mine">
	<jsp:attribute name="content">
	
		<!-- Main Area -->
	  	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
	  	
	  	 	<ol class="breadcrumb">
			  <li class="breadcrumb-item"><a href='<c:url value="/accueil"/>'>Accueil</a></li>
			  <li class="breadcrumb-item"><a href='<c:url value="/mine"/>'>Mine</a></li>
			  <li class="breadcrumb-item active">Liste des modèles</a></li>
			</ol>
	  	
			<!-- Main Content -->
		    <div class="container">
			    <h3>Modèles de robot</h3>
                <table class="table">
	              	<thead>
	              		<tr>
	              			<th>Numéro</th>
	              			<th>Date conception</th>
	              			<th>Cout exploitation</th>
	              		</tr>
	              	</thead>
					<c:forEach items="${requestScope.modeles}" var="modele">
						<tr>
							<td><c:out value="${modele.id}" /></td>
							<td><c:out value="${modele.dateConception}" /></td>
							<td><c:out value="${modele.coutExploitation}" /></td>
						</tr>
					</c:forEach>
			    </table>
		    </div>
	    </div>
	</jsp:attribute>
</t:base>