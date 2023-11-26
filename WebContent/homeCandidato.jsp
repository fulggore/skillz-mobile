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
    <h1>Candidato</h1>
        <form action="AddPersonDetail" method="post">
            <div class="form-group">
	            <div class="row">
	    			<div class="col-md-6">
	    				<input type="hidden"  id="id" name="id">
	                	<label for="nome">Nome:</label>
	                	<input type="text" class="form-control" id="nome" name="nome" placeholder="Digite seu nome" required>
	                </div>
	                <div class="col-md-3">
	                	<label for="email">Email:</label>
	                	<input type="email" class="form-control" id="email"  name="email" placeholder="Digite seu email" required>
	                </div>
	                <div class="col-md-3">
	                	<label for="cpf">CPF:</label>
	                	<input type="text" class="form-control" id="cpf" name="cpf" placeholder="Digite seu CPF" required>
	                </div>
	             </div>
	             
	              <div class="row">
	    			<div class="col-md-8">
	                	<label for="senha">Senha:</label>
                		<input type="password" class="form-control" id="senha" name="senha" placeholder="Digite sua senha" required>
	                </div>
	                <div class="col-md-4">
	                	<label for="celular">Celular:</label>
		                <div class="input-group">
		                    <div class="input-group-prepend">
		                        <span class="input-group-text">+55</span>
		                    </div>
		                    <input type="text" class="form-control" id="celular" name="celular" placeholder="Digite seu número de celular" required>
		                </div>
	                </div>
	                
	             </div>
                
     
            </div>
            
            
           
            <h1>Curriculo</h1>
            <div class="form-group">
           		 <div class="row">
	    			<div class="col-md-6">
	                	<label for="nomeCurriculo">Nome:</label>
                		<input type="text" class="form-control" id="nomeCurriculo" name="nomeCurriculo" placeholder="Digite seu nome" required>
	                </div>
	                <div class="col-md-6">
	                	<label for="profissao">Profissão:</label>
                		<input type="text" class="form-control" id="profissao" name="profissao" placeholder="Digite sua profissão" required>
	                </div>
	                
	             </div>
	             
	             <div class="row">
	    			<div class="col-md-6">
	                	<label for="experiencia">Experiência:</label>
                		<textarea class="form-control" id="experiencia" rows="3" name="experiencia" placeholder="Digite sua experiência" required></textarea>
	                </div>
	                <div class="col-md-6">
	                	<label for="educacao">Educação:</label>
                		<textarea class="form-control" id="educacao" rows="3"  name="educacao" placeholder="Digite sua educação" required></textarea>
	                </div>
	                
	             </div>
	             
	             <div class="row">
	    			<div class="col-md-6">
	                	<label for="extra">Informações Extras:</label>
                		<textarea class="form-control" id="extra" rows="3"  name="extra" placeholder="Digite informações extras" required></textarea>
	                </div>
	                <div class="col-md-6">
	                	<label for="chave">Palavras Chave:</label>
                		<textarea class="form-control" id="chave" rows="3" name="chave" placeholder="Digite Palavras Chave" required></textarea>
	                </div>
	                
	             </div>
                
            </div>
            
            
            <button type="submit" class="btn btn-primary">Enviar</button>
            
            <br>
            <br>
            <br>
            <br>
            <h1>Meus Curriculos</h1>
            <table class="table">
		        <thead>
		        <tr>
		            <th>Nome Currículo</th>
		            <th>Profissão/</th>
		            <th>Palavras Chave</th>
		            <th>Edit</th>
		            <th>Delete</th>
		        </tr>
		        </thead>
		        <tbody>
		        <c:forEach items="${persons}" var="person">
		            <tr>
		                
		                <td><c:out value="${person.nomeCurriculo}"></c:out></td>
		                <td><c:out value="${person.profissao}"></c:out></td>
		                <td><c:out value="${person.chave}"></c:out></td>
		                <td><a class="btn btn-primary" href="GetPersonDetails?action=edit&id=<c:out value='${person.id}'/>">Edit</a></td>
		                <td><a class="btn btn-danger" href="GetPersonDetails?action=delete&id=<c:out value='${person.id}'/>">Delete</a></td>
		            </tr>
		        </c:forEach>
		        </tbody>
		    </table>
            
        </form>
    </div>

    <!-- Adicione o link para o Bootstrap JS e o jQuery (necessários para alguns recursos do Bootstrap) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>