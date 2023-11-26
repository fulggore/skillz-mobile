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
	
    <div class="container mt-5">
    <h1>Editar</h1>
        <form action="AddPersonDetailR" method="post">
            <div class="form-group">
	            <div class="row">
	    			<div class="col-md-6">
	    				<input type="hidden"  id="id" name="id" value="<c:out value='${person.id}'></c:out>"/>
	    
	                	<label for="nome">Nome:</label>
	                	<input type="text" class="form-control" id="nome" name="nome" placeholder="Digite seu nome" value="<c:out value='${person.nome}'></c:out>" required>
	                </div>
	                <div class="col-md-3">
	                	<label for="email">Email:</label>
	                	<input type="email" class="form-control" id="email"  name="email" placeholder="Digite seu email" value="<c:out value='${person.email}'></c:out>" required>
	                </div>
	                <div class="col-md-3">
	                	<label for="cpf">CPF:</label>
	                	<input type="text" class="form-control" id="cpf" name="cpf" value="<c:out value='${person.cpf}'></c:out>" placeholder="Digite seu CPF" required>
	                </div>
	             </div>
	             
	              <div class="row">
	    			<div class="col-md-8">
	                	<label for="senha">Senha:</label>
                		<input type="password" class="form-control" id="senha" name="senha" value="<c:out value='${person.cpf}'></c:out>" placeholder="Digite sua senha" required>
	                </div>
	                <div class="col-md-4">
	                	<label for="celular">Celular:</label>
		                <div class="input-group">
		                    <div class="input-group-prepend">
		                        <span class="input-group-text">+55</span>
		                    </div>
		                    <input type="text" class="form-control" id="celular" name="celular" value="<c:out value='${person.celular}'></c:out>" placeholder="Digite seu número de celular" required>
		                </div>
	                </div>
	                
	             </div>
                
     
            </div>
            
            
           
            <h1>Curriculo</h1>
            <div class="form-group">
           		 <div class="row">
	    			<div class="col-md-6">
	                	<label for="nomeCurriculo">Nome:</label>
                		<input type="text" class="form-control" id="nomeCurriculo" name="nomeCurriculo" value="<c:out value='${person.nomeCurriculo}'></c:out>" placeholder="Digite seu nome" required>
	                </div>
	                <div class="col-md-6">
	                	<label for="profissao">Profissão:</label>
                		<input type="text" class="form-control" id="profissao" name="profissao" value="<c:out value='${person.profissao}'></c:out>" placeholder="Digite sua profissão" required>
	                </div>
	                
	             </div>
	             
	             <div class="row">
	    			<div class="col-md-6">
	                	<label for="experiencia">Experiência:</label>
                		<textarea class="form-control" id="experiencia" rows="3" name="experiencia" placeholder="Digite sua experiência" required><c:out value='${person.experiencia}'></c:out></textarea>
	                </div>
	                <div class="col-md-6">
	                	<label for="educacao">Educação:</label>
                		<textarea class="form-control" id="educacao" rows="3"  name="educacao" placeholder="Digite sua educação" required><c:out value='${person.educacao}'></c:out></textarea>
	                </div>
	                
	             </div>
	             
	             <div class="row">
	    			<div class="col-md-6">
	                	<label for="extra">Informações Extras:</label>
                		<textarea class="form-control" id="extra" rows="3"  name="extra" placeholder="Digite informações extras" required><c:out value='${person.extra}'></c:out></textarea>
	                </div>
	                <div class="col-md-6">
	                	<label for="chave">Palavras Chave:</label>
                		<textarea class="form-control" id="chave" rows="3" name="chave" placeholder="Digite Palavras Chave" required><c:out value='${person.chave}'></c:out></textarea>
	                </div>
	                
	             </div>
	             <br>
	             <div class="row">
	    			<div class="col-md-2">
	                	<label for="favorito">Deseja Favoritar ?</label>&nbsp;&nbsp;&nbsp;&nbsp;
                		
	                </div>
	                <div class="col-md-2">
                		<input class="form-check-input" type="checkbox" value="1" id="favorito" name="favorito">
	                </div>
	                
	                
	             </div>
                
            </div>
            
            
            <button type="submit" class="btn btn-primary">Enviar</button>
            
            <br>
            <br>
            <br>
            <br>
            
            
        </form>
    </div>

    <!-- Adicione o link para o Bootstrap JS e o jQuery (necessários para alguns recursos do Bootstrap) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>