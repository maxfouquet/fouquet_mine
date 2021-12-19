<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>

<%@attribute name="title" %>
<%@attribute name="nav" %>
<%@attribute name="content" fragment="true" %>

<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title>${title}</title>
		
		<link rel="icon" href='<c:url value="/resources/img/favicon.ico"/>'>
		
		<!-- Bootstrap CSS -->
    	<link href='<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>' rel="stylesheet">
    	
    	<!-- Fonts -->
    	<link href='<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>' rel="stylesheet">
    	
    	<!-- Custom CSS -->
    	<link href='<c:url value="/resources/css/style.css"/>' rel="stylesheet">
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="<c:url value="/accueil"/>">NSY135</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		
		    <div class="collapse navbar-collapse" id="navbar">
		      <ul class="navbar-nav me-auto">
		      	<li class="nav-item">
		          <a class="nav-link <c:if test="${nav.equals('accueil')}">active</c:if>" href="<c:url value="/accueil"/>">Accueil</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link <c:if test="${nav.equals('mine')}">active</c:if>" href="<c:url value="/mine"/>">Mine</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link <c:if test="${nav.equals('contact')}">active</c:if>" href="<c:url value="/contact"/>">Contact</a>
		        </li>
		       </ul>
		     </div>
		  </div>
		</nav>
		
		<div class="container-fluid">
	  		<div class="row mt-2">

		 		<jsp:invoke fragment="content"/>
		 
		     </div>
		</div>
		
		<footer>
	        <p class="pt-4">Copyright &copy; 2021 Max FOUQUET</p>
	        <p>Made with <a href="http://getbootstrap.com/" target="_blank">Bootstrap</a></p>
    	</footer>
	</body>
</html>