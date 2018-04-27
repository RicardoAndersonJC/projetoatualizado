<?php 
include_once("conexao.php");
cadastro();
    function cadastro(){ 
		
		session_start();
       
		
		$nome = $_POST["nome"];
		
		$email = $_POST["email"];
		
		$senha = $_POST["Password"];
		
		try
		{
			$pdo = conectar();	
			
			$sql = "INSERT INTO users(nome, email, senha) VALUES(:nome, :email, :senha)";
				
			$inserir = $pdo->prepare($sql);
				
			$inserir->bindValue(":nome", $nome);
				
			$inserir->bindValue(":email", $email);
				
			$inserir->bindValue(":senha", $senha);		
			
				
			$inserir->execute();
			
			
			
		} 
        
				
		catch(PDOException $e)
		{
			$sucess = "0";
	
			echo $sucess;
		
			return 0;
		}
		 session_destroy();	
 
	 return 0;   
	
	}
header("location:http://localhost/index.html");
return 0;
    ?>
