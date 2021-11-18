<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<%@ include file="head-tolive.jsp" %>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <%@ include file="menu-tolive.jsp" %>
            <!-- Page Content-->
            <section class="py-5">
                <div class="container">
	<h2>Editar Evolução</h2>
	<c:if test="${not empty msg }">
			<div class="alert alert-success">${msg}</div>
		</c:if>
		<c:if test="${not empty erro }">
			<div class="alert alert-danger">${erro}</div>
		</c:if>
		
	<form action="evolution" method="post">
		<input type="hidden" value="updated" name="action">
		<input type="hidden" value="${evolution.idEvolution}" name="idEvolution">
		<div class="form-group">
			<label for="id-height">Altura</label>
			<input type="text" name="height" id="id-height" class="form-control" value="${evolution.height}" >
		</div>
		<div class="form-group">
			<label for="id-weight">Peso</label>
			<input type="text" name="weight" id="id-weight" class="form-control" value="${evolution.weight}">
		</div>
		<div class="form-group">
			<label for="id-dateImc">Data</label>
			<input type="text" name="dateImc" id="id-dateImc" class="form-control" 
				value='<fmt:formatDate value="${evolution.dateImc.time}" pattern="dd/MM/yyyy"/>'>
		</div>
		<br>
		<input type="submit" value="Salvar" class="btn btn-primary">
		<a href="evolution?action=getAll" class="btn btn-danger">Cancelar</a>
	</form>
	</div>
            </section>
 </main>
        <!-- Footer-->
        <%@ include file="footer-tolive.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>