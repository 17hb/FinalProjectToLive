<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-BR">
<%@ include file="head-tolive.jsp"%>
<body class="d-flex flex-column">
	<main class="flex-shrink-0">
		<!-- Navigation-->
		<%@ include file="menu-tolive.jsp"%>
		<!-- Page Content-->
		<section class="py-5">
			<div class="container px-5 my-5">
				<div class="row gx-5">
						<h2>Cadastrar Evolução</h2>

						<c:if test="${ not empty msg }">
							<div class="alert alert-success">${ msg }</div>
						</c:if>
						<c:if test="${ not empty erro }">
							<div class="alert alert-danger">${ erro }</div>
						</c:if>

						<form action="evolution" method="post">
							<input type="hidden" value="register" name="action">
							<div class="form-group">
								<label for="id-height">Altura</label> 
								<input class="form-control" type="text" name="height" id="id-height" />
							</div>
							<div class="form-group">
								<label for="id-weight">Peso</label> 
								<input class="form-control" type="text" name="weight" id="id-weight" />
							</div>
							<div class="form-group">
								<label for="id-dateImc">Data</label> 
								<input class="form-control" type="text" name="dateImc" id="id-dateImc" />
							</div>
							<br>
							<input type="submit" value="Salvar" class="btn btn-primary">
						</form>
				</div>
			</div>
		</section>
	</main>
	<!-- Footer-->
	<%@ include file="footer-tolive.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
