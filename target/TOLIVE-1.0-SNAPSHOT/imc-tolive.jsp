
<!DOCTYPE html>
<html lang="pt-BR">
<%@ include file="head-tolive.jsp"%>
<body class="d-flex flex-column">
	<main class="flex-shrink-0">
		<!-- Navigation-->
		<%@ include file="menu-tolive.jsp"%>
		<link rel="stylesheet" href="css/login.css">  
		<!-- Pricing section-->
		<section class="bg-light py-5">
			<div class="container px-5 my-5">
				<div class="text-center mb-5">
				
				
				</div>
				<div>
					<img id="atleta__aquecendo" src="assets/atleta.svg"
						alt="desenho atleta se aquecendo">
					<p id="nome__imc">Calcule seu IMC</p>
					<form action="/" id="formulario" method="POST">
						<label for="peso">Peso</label> <input type="text" id="peso"
							name="peso"> <label for="altura">Altura</label> <input
							type="text" id="altura" name="altura">
						<button type="submit">Calcular</button>
					</form>
					<div id="resultado"></div>
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
	<script src="js/main.js"></script>
</body>
</html>
