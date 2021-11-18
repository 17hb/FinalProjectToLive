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
		<!-- Header-->
		<header class="bg-dark py-5">
			<div class="container px-5">
				<div class="row gx-5 align-items-center justify-content-center">
					<div class="col-lg-8 col-xl-7 col-xxl-6">
						<div class="my-5 text-center text-xl-start">
							<h1 class="display-5 fw-bolder text-white mb-2">Change
								Starts Now!</h1>
							<p class="lead fw-normal text-white-50 mb-4">As atividades
								físicas estimulam a produção e a liberação de endorfina, que é
								um hormônio produzido pela glândula hipófise no cérebro, que tem
								ação analgésica no corpo, o que ajuda a promover a sensação de
								bem-estar físico e mental.</p>
							<div
								class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
								<a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Dicas</a>
								<a class="btn btn-outline-light btn-lg px-4" href="imc-tolive.jsp">Seu
									imc</a>
							</div>
						</div>
					</div>
					<div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
						<img class="img-fluid rounded-3 my-5" src="assets/mulher.jpg"
							alt="mulher correndo" />
					</div>
				</div>
			</div>
		</header>
		<!-- Features section-->
		<section class="py-5" id="features">
			<div class="container px-5 my-5">
				<div class="row gx-5">
					<div class="col-lg-4 mb-5 mb-lg-0">
						<h2 class="fw-bolder mb-0">Viver cada dia mais saúdavel!</h2>
					</div>
					<div class="col-lg-8">
						<div class="row gx-5 row-cols-1 row-cols-md-2">
							<div class="col mb-5 h-100">
								<div
									class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
									<i class="bi bi-emoji-laughing"></i>
								</div>
								<h2 class="h5">Corrida</h2>
								<p class="mb-0">Antes de correr, aqueça seu corpo, tire-o da
									inércia devagar. Inicie com uma caminhada, depois acelere os
									passos e então comece com um trote (corrida leve). Com 5
									minutos de aquecimento seu corpo já vai estar pronto pra você
									entrar no ritmo de sua corrida com mais segurança e conforto..</p>
							</div>
							<div class="col mb-5 h-100">
								<div
									class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
									<i class="bi bi-emoji-wink"></i>
								</div>
								<h2 class="h5">Castanha-do-pará</h2>
								<p class="mb-0">Fonte de vitamina E e selênio, que colaboram
									para frear a produção de radicais livres, a castanha-do-pará
									retarda o envelhecimento. O mineral, ingerido entre 55 e 70
									gramas por dia, reduz também o risco de doenças no coração e a
									propagação do câncer.</p>
							</div>
							<div class="col mb-5 mb-md-0 h-100">
								<div
									class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
									<i class="bi bi-emoji-expressionless"></i>
								</div>
								<h2 class="h5">Aspirina em excesso</h2>
								<p class="mb-0">A perda de visão dos idosos, um processo
									normal que se acelera com o passar dos anos, pode se antecipar
									com o consumo exagerado de aspirina. A descoberta é de um
									estudo realizado nos Estados Unidos. Os cientistas observaram
									no grupo analisado que quem toma aspirina mais de duas vezes
									por semana durante três meses, ao longo de 10 anos, apresenta
									duas vezes mais riscos de desenvolver perda de visão do que os
									que não tomam o medicamento.</p>
							</div>
							<div class="col h-100">
								<div
									class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
									<i class="bi bi-emoji-frown"></i>
								</div>
								<h2 class="h5">Baixa umidade</h2>
								<p class="mb-0">A falta de chuva, que provoca baixa umidade
									no ar, é maléfica para o corredor. Quando a umidade está
									inferior a 50%, o organismo se cansa mais rapidamente, perde
									força e resistência. O ritmo da corrida diminui e isso faz com
									que aumente a pressão e os batimentos cardíacos, causando
									fadiga muscular.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Testimonial section-->
		<div class="py-5 bg-light">
			<div class="container px-5 my-5">
				<div class="row gx-5 justify-content-center">
					<div class="col-lg-10 col-xl-7">
						<div class="text-center">
							<div class="fs-4 mb-4 fst-italic">"Praticar atividade
								física com o TO'LIVE é uma experiência incrível e totalmente
								personalizado pra mim! Começar com exercícios mais simples torna
								as coisas mais fáceis!"</div>
							<div class="d-flex align-items-center justify-content-center">
								<img class="rounded-circle me-3" src="assets/ceo.png"
									alt="foto rosto homem" />
								<div class="fw-bold">
									Peter Parker <span class="fw-bold text-primary mx-1">/</span>
									CEO, Aknideo
								</div>
							</div>
						</div>
					</div>
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
