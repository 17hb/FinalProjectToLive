<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="pt-BR">
    <%@ include file="head-tolive.jsp" %>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <%@ include file="menu-tolive.jsp" %>
            <!-- Page Content-->
            <section class="py-5">
                <div class="container">
		<h2>Evolução</h2>
		<c:if test="${not empty msg}">
			<div class="alert alert-success">${msg}${calcImc}</div>
		</c:if>
		<c:if test="${not empty erro}">
			<div class="alert alert-danger">${erro}</div>
		</c:if>
		<table class="table table-striped">
			<tr>
				<th>Altura</th>
				<th>Peso</th>
				<th>Data</th>
				<th></th>
			</tr>
			<c:forEach items="${evolution}" var="dataRegister">
				<tr>
					<td>${dataRegister.height}</td>
					<td>${dataRegister.weight}</td>
					<td><fmt:formatDate value="${dataRegister.dateImc.time}"
							pattern="dd/MM/yyyy" /></td>
					<td>
						<c:url value="evolution" var="link">
						<c:param name="action" value="open-form-edit" />
						<c:param name="idEvolution" value="${dataRegister.idEvolution}" />
						</c:url> <a href="${link}" class="btn btn-primary btn-xs">Editar</a>
						<button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteModal"
						onclick="idEvolutionDelete.value = ${dataRegister.idEvolution}">Excluir</button>
					</td>
				</tr>

			</c:forEach>
		</table>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
					<button type="button" class="close" data-dismiss="modal"aria-label="Close">
						<span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">Deseja realmente excluir a evolução?</div>
				<div class="modal-footer">
					<form action="evolution" method="post">
						<input type="hidden" name="action" value="delete"> 
						<input type="hidden" name="idEvolution" id="idEvolutionDelete">
						<button type="button" class="btn btn-secondary"data-dismiss="modal">Cancelar</button>
						<button type="submit" class="btn btn-danger">Excluir</button>
					</form>
				</div>
			</div>
		</div>
	</div>
            </section>
        </main>
        <!-- Footer-->
        <%@ include file="footer-tolive.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
			crossorigin="anonymous">
        </script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" 
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
			crossorigin="anonymous">
		</script>
		
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" 
			crossorigin="anonymous">
		</script>
    </body>
</html>
