<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container px-5">
		<a class="navbar-brand" href="index.jsp">TO'LIVE</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="profile-tolive.jsp">Perfil</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">Evolução</a>
					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdownBlog">
						<li><a class="dropdown-item" href="evolution?action=getAll">Minha
								Evolução</a></li>
						<li><a class="dropdown-item" href="register-evolution.jsp">Cadastrar
								Evolução</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link"
					href="exercise-tolive.jsp">Exercícios</a></li>
				<li class="nav-item"><a class="nav-link" href="about.jsp">Sobre</a></li>

				
			</ul>
		</div>
	</div>
</nav>