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
								f�sicas estimulam a produ��o e a libera��o de endorfina, que �
								um horm�nio produzido pela gl�ndula hip�fise no c�rebro, que tem
								a��o analg�sica no corpo, o que ajuda a promover a sensa��o de
								bem-estar f�sico e mental.</p>
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
						<h2 class="fw-bolder mb-0">Viver cada dia mais sa�davel!</h2>
					</div>
					<div class="col-lg-8">
						<div class="row gx-5 row-cols-1 row-cols-md-2">
							<div class="col mb-5 h-100">
								<div
									class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
									<i class="bi bi-emoji-laughing"></i>
								</div>
								<h2 class="h5">Corrida</h2>
								<p class="mb-0">Antes de correr, aque�a seu corpo, tire-o da
									in�rcia devagar. Inicie com uma caminhada, depois acelere os
									passos e ent�o comece com um trote (corrida leve). Com 5
									minutos de aquecimento seu corpo j� vai estar pronto pra voc�
									entrar no ritmo de sua corrida com mais seguran�a e conforto..</p>
							</div>
							<div class="col mb-5 h-100">
								<div
									class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
									<i class="bi bi-emoji-wink"></i>
								</div>
								<h2 class="h5">Castanha-do-par�</h2>
								<p class="mb-0">Fonte de vitamina E e sel�nio, que colaboram
									para frear a produ��o de radicais livres, a castanha-do-par�
									retarda o envelhecimento. O mineral, ingerido entre 55 e 70
									gramas por dia, reduz tamb�m o risco de doen�as no cora��o e a
									propaga��o do c�ncer.</p>
							</div>
							<div class="col mb-5 mb-md-0 h-100">
								<div
									class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
									<i class="bi bi-emoji-expressionless"></i>
								</div>
								<h2 class="h5">Aspirina em excesso</h2>
								<p class="mb-0">A perda de vis�o dos idosos, um processo
									normal que se acelera com o passar dos anos, pode se antecipar
									com o consumo exagerado de aspirina. A descoberta � de um
									estudo realizado nos Estados Unidos. Os cientistas observaram
									no grupo analisado que quem toma aspirina mais de duas vezes
									por semana durante tr�s meses, ao longo de 10 anos, apresenta
									duas vezes mais riscos de desenvolver perda de vis�o do que os
									que n�o tomam o medicamento.</p>
							</div>
							<div class="col h-100">
								<div
									class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
									<i class="bi bi-emoji-frown"></i>
								</div>
								<h2 class="h5">Baixa umidade</h2>
								<p class="mb-0">A falta de chuva, que provoca baixa umidade
									no ar, � mal�fica para o corredor. Quando a umidade est�
									inferior a 50%, o organismo se cansa mais rapidamente, perde
									for�a e resist�ncia. O ritmo da corrida diminui e isso faz com
									que aumente a press�o e os batimentos card�acos, causando
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
								f�sica com o TO'LIVE � uma experi�ncia incr�vel e totalmente
								personalizado pra mim! Come�ar com exerc�cios mais simples torna
								as coisas mais f�ceis!"</div>
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
