<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Infnet - Java</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
	    <style>
			.alert {
			  padding: 20px;
			  background-color: #f44336;
			  color: white;
			  opacity: 1;
			  transition: opacity 0.6s;
			  margin-bottom: 15px;
			}
			
			.alert.success {background-color: #04AA6D;}
			.alert.info {background-color: #2196F3;}
			.alert.warning {background-color: #ff9800;}
			
			.closebtn {
			  margin-left: 15px;
			  color: white;
			  font-weight: bold;
			  float: right;
			  font-size: 22px;
			  line-height: 20px;
			  cursor: pointer;
			  transition: 0.3s;
			}
			
			.closebtn:hover {
			  color: black;
			}
		</style>
    </head>
	<body>
        <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
						
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            
                            <div class="description">
                            	<p>
                            		Desenvolvido por Jean Breno.
                            		<br>
	                            	TP3 apresentado a disciplica <strong>Desenvolvimento Web com Java</strong>, professor Elberth.
	                            	<br>
	                            	Reposit?rio do projeto: <a href="https://github.com/jeanbreno/cadastro-e-login" target="_blank"><strong>Projeto Cadastro-Login</strong></a>.
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                        	<div class="form-box">
                        		<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Fa?a seu cadastro</h3>
	                            		<p>Cadastre-se para acessar:</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-pencil"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                    <form role="form" action="/usuario/incluir" method="post" class="registration-form">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="form-first-name">Nome</label>
				                        	<input type="text" name="nome" placeholder="Nome..." class="form-first-name form-control" id="name" value="Jota">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-email">Email</label>
				                        	<input type="email" name="email" placeholder="Email..." class="form-email form-control" id="email" value="jota@gmail.com">
				                        </div>
                				        <div class="form-group">
				                        	<label class="sr-only" for="form-last-name">Senha</label>
				                        	<input type="password" name="senha" placeholder="Senha..." class="form-last-name form-control" id="password" value="123">
				                        </div>
				                        <button type="submit" class="btn" onclick="myFunction()">Cadastrar!</button>
				                    </form>
			                    </div>
                        	</div>
                   			  <div class="social-login">
	                        	<h3>...ou volte para p?gina de login:</h3>
	                        	<div class="social-login-buttons">
		                        	<a href="/"> Voltar</a>
	                        	</div>
	                        </div>
                        </div>
                      </div>
                  </div>
              </div>
          </div>          
	        <!-- Footer -->
	        <footer>
	        	<div class="container">
	        		<div class="row">
	        			
	        			<div class="col-sm-8 col-sm-offset-2">
	        				<div class="footer-border"></div>
	        				<p>Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a></p>
	        			</div>
	        			
	        		</div>
	        	</div>
	        </footer>
	
	        <!-- Javascript -->
	        <script src="assets/js/jquery-1.11.1.min.js"></script>
	        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
	        <script src="assets/js/jquery.backstretch.min.js"></script>
	        <script src="assets/js/scripts.js"></script>
	        
	        <!--[if lt IE 10]>
	            <script src="assets/js/placeholder.js"></script>
	        <![endif]-->
	        
		<script>
			function myFunction() {
			  alert("Usu?rio cadastrado!");
			}
		</script>
       </body>
</html>