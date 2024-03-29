<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/accueil"> <spring:message
					code="navbar.welcome" />
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link" aria-current="page"
						href="${pageContext.request.contextPath}/contact"> <spring:message
							code="navbar.contact" />
					</a> <a class="nav-link"
						href="${pageContext.request.contextPath}/listemanager"><spring:message
							code="navbar.managerlist" /></a> <a class="nav-link"
						href="${pageContext.request.contextPath}/listeemployee"><spring:message
							code="navbar.employeelist" /></a>
					<a class="nav-link"
						href="${pageContext.request.contextPath}/parameters"><spring:message
							code="navbar.param" /></a>


				</div>
			</div>
		</div>
		<div class="d-flex flex-row-reverse bd-highlight">
		
 		<c:set scope="session" var="compte" value="${compte}" /> 
		
			<a class="nav-link"
				href="${pageContext.request.contextPath}/listeemployee?lang=en">
				<img class="pays"
				src="${pageContext.request.contextPath}/styles/icon/angleterre.png"
				alt="English" />
			</a> <a class="nav-link"
				href="${pageContext.request.contextPath}/listeemployee?lang=fr">
				<img class="pays" src="${pageContext.request.contextPath}/styles/icon/france.png"
				alt="Français" />
			</a> <a class="nav-link"
				href="${pageContext.request.contextPath}/loginlogout"> <spring:message
					code="navbar.logout" />
			</a>
			<span><spring:message code="navbar.connected" />${compte.login}</span>
		</div>
	</nav>
</header>