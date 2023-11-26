<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Curriculos</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
        body {
            
            background-color: #CED0CF;
            
        }

</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="#">Sistema de Gestão de Candidatos</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <form class="form-inline my-2 my-lg-0 ml-auto">
	      <a href="index.html" class="btn btn-info my-2 my-sm-0">Logout</a>
	    </form>
	  </div>
	</nav>
    <div class="container mt-5">
    <%
	    
	    String mensagem = (String)request.getAttribute("msg");
	    
	    if (mensagem != null && !mensagem.isEmpty()) {
	%>
	        
	        <div class="alert alert-primary" role="alert">
	            <%= mensagem %>
	        </div>
	<%
	    }
	%>
    <h1>Candidatos</h1>
        	<form action="GetPersonDetails" method="post">
        	<div class="form-group">
	            <div class="row">
	    			<div class="col-md-10">
	    					<label for="nome">Busca por palavras Chave:</label>
	                </div>
	              </div>
	               <div class="row">
		               <div class="col-md-10">
		                	<input type="text" class="form-control" id="busca" name="busca" placeholder="Digite a palavra chave" required>
		                </div>
	                <div class="col-md-2">
	    				
	    				<button type="submit" class="btn btn-info">Buscar</button>
	                </div>
	              </div>
            </div>
            </form>
        	
            <table class="table">
		        <thead>
		        <tr>
		            <th>Nome Currículo</th>
		            <th>Profissão/</th>
		            <th>Palavras Chave</th>
		            <th>Visualizar</th>

		        </tr>
		        </thead>
		        <tbody>
		        <c:forEach items="${persons}" var="person">
		            <tr>
		                
		                <td><c:out value="${person.nomeCurriculo}"></c:out></td>
		                <td><c:out value="${person.profissao}"></c:out></td>
		                <td><c:out value="${person.chave}"></c:out></td>
		                <td><a class="btn btn-primary" href="GetPersonDetails?action=editR&id=<c:out value='${person.id}'/>">Ver Currículo</a></td>

		            </tr>
		        </c:forEach>
		        </tbody>
		    </table>
		    
		    <h1>Curriculos Favoritados</h1>
		    <table class="table">
		        <thead>
		        <tr>
		            <th>Nome Currículo</th>
		            <th>Profissão/</th>
		            <th>Palavras Chave</th>
		            <th>Visualizar</th>
		        </tr>
		        </thead>
		        <tbody>
		        <c:forEach items="${persons}" var="person">
		            <c:if test="${person.favorito == 1}">
		            <tr>
		                
		                <td><c:out value="${person.nomeCurriculo}"></c:out></td>
		                <td><c:out value="${person.profissao}"></c:out></td>
		                <td><c:out value="${person.chave}"></c:out></td>
		                <td><a class="btn btn-primary" href="GetPersonDetails?action=editR&id=<c:out value='${person.id}'/>">Ver Currículo</a></td>

		            </tr>
		            </c:if>
		        </c:forEach>
		        </tbody>
		    </table>
            
    </div>

    <!-- Adicione o link para o Bootstrap JS e o jQuery (necessários para alguns recursos do Bootstrap) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>