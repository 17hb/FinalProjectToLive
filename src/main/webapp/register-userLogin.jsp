<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="pt-BR">
<%@ include file="head-tolive.jsp"%>
<body class="d-flex flex-column h-100">
	<main class="flex-shrink-0">
		<!-- Navigation-->
		<%@ include file="menu-tolive.jsp"%>

		<!-- Page Content-->
		<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
			<div class="text-center mb-5">
				<h3 class="fw-bolder">Cadastre email e senha.</h3>
			</div>

			<div class="row gx-5 justify-content-center">
				<div class="col-lg-8 col-xl-6">

					<c:if test="${not empty msg}">
						<div class="alert alert-success">${msg}</div>
					</c:if>
					<c:if test="${not empty erro}">
						<div class="alert alert-danger">${erro}</div>
					</c:if>

					<form action="login" method="post">

						<input type="hidden" value="registerLogin" name="action">
						<div class="form-goup">
							<label for="id-height">Email</label> <input class="form-control"
								type="text" name="email" id="id-height" />
						</div>
						<div class="form-goup">
							<label for="id-weight">Senha</label> <input class="form-control"
								type="password" name="password" id="id-weight" />
						</div>
						<br>
						<input class="btn btn-primary" type="submit" value="Salvar">
					</form>


				</div>
			</div>
		</div>
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
