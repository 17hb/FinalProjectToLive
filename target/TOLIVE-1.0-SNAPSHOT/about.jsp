<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="pt-BR">
<%@ include file="head-tolive.jsp"%>
<body class="d-flex flex-column">
	<main class="flex-shrink-0">
		<!-- Navigation-->
		<%@ include file="menu-tolive.jsp"%>
		<!-- Header-->
		<header class="py-5">
			<div class="container px-5">
				<div class="row justify-content-center">
					<div class="col-lg-8 col-xxl-6">
						<div class="text-center my-5">
							<h1 class="fw-bolder mb-3">Nossa miss�o � transformar a vida
								das pessoas.</h1>
							<p class="lead fw-normal text-muted mb-4">A TO'LIVE foi
								desenvolvido com base na ideia de exerc�cios funcionais com foco
								e bem estar para todos. Nossos exerc�cios s�o exclusivos,
								criados com base na experi�ncia de profissionais do mais alto
								n�vel.</p>
							<a class="btn btn-primary btn-lg" href="#scroll-target">Leia
								Nossa Hist�ria</a>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- About section one-->
		<section class="py-5 bg-light" id="scroll-target">
			<div class="container px-5 my-5">
				<div class="row gx-5 align-items-center">
					<div class="col-lg-6">
						<img class="img-fluid rounded mb-5 mb-lg-0"
							src="assets/visao.jpg" alt="empresa com funcion�rios" />
					</div>
					<div class="col-lg-6">
						<h2 class="fw-bolder">Nossa funda��o</h2>
						<p class="lead fw-normal text-muted mb-0">
							TO LIVE � um aplicativo para exerc�cios que respeita o fator
							humano, por isso � mais indicado para iniciantes, direcionado
							principalmente para aquelas pessoas que n�o gostam de academia,
							n�o gostam de seguir dietas restritivas e possuem dificuldade em
							manter uma rotina de exerc�cios. <br> <b>-#- Change
								Starts Now! -#-</b>.
						</p>
					</div>
				</div>
			</div>
		</section>
		<!-- About section two-->
		<section class="py-5">
			<div class="container px-5 my-5">
				<div class="row gx-5 align-items-center">
					<div class="col-lg-6 order-first order-lg-last">
						<img class="img-fluid rounded mb-5 mb-lg-0"
							src="assets/fundacao.jpg" alt="pessoas olhando para o futuro." />
					</div>
					<div class="col-lg-6">
						<h2 class="fw-bolder">Crescimento</h2>
						<p class="lead fw-normal text-muted mb-0">Ser uma empresa de
							refer�ncia, reconhecida como a melhor op��o por clientes,
							colaboradores, comunidade, fornecedores e investidores, pela
							qualidade de nossos produtos, servi�os e relacionamento.</p>
					</div>
				</div>
			</div>
		</section>
		<!-- Team members section-->
		<section class="py-5 bg-light">
			<div class="container px-5 my-5">
				<div class="text-center">
					<h2 class="fw-bolder">Nosso Time</h2>
					<p class="lead fw-normal text-muted mb-5">Dedicado � qualidade e ao seu sucesso</p>
				</div>
				<div
					class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
					<div class="col mb-5 mb-5 mb-xl-0">
						<div class="text-center">
							<img class="img-fluid rounded-circle mb-4 px-4"
								src="assets/01.png" alt="..." />
							<h5 class="fw-bolder">Catherina Gazzoni</h5>
							<div class="fst-italic text-muted">Founder &amp; CEO</div>
						</div>
					</div>
					<div class="col mb-5 mb-5 mb-xl-0">
						<div class="text-center">
							<img class="img-fluid rounded-circle mb-4 px-4"
								src="assets/02.png" alt="..." />
							<h5 class="fw-bolder">Emerson Barros</h5>
							<div class="fst-italic text-muted">Founder &amp; CEO</div>
						</div>
					</div>
					<div class="col mb-5 mb-5 mb-sm-0">
						<div class="text-center">
							<img class="img-fluid rounded-circle mb-4 px-4"
								src="assets/03.png" alt="..." />
							<h5 class="fw-bolder">Henrique Bitancourt</h5>
							<div class="fst-italic text-muted">Founder &amp; CEO</div>
						</div>
					</div>
					<div class="col mb-5">
						<div class="text-center">
							<img class="img-fluid rounded-circle mb-4 px-4"
								src="assets/04.png" alt="..." />
							<h5 class="fw-bolder">Wenzel Vale Lopes</h5>
							<div class="fst-italic text-muted">Founder &amp; CEO</div>
						</div>
					</div>
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
