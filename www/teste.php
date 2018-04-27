<?php
include_once("conexao.php");
$nome = "anderson";
$email="negoanderson26@gmail.com";
    $senha=123456;
$pdo = conectar();	
			
			$sql = "INSERT INTO users(nome,email, senha ) VALUES(:nome, :email, :senha)";
				
			$inserir = $pdo->prepare($sql);
				
			$inserir->bindValue(":nome", $nome);
				
			$inserir->bindValue(":email", $email);
				
			$inserir->bindValue(":senha", $senha);
				
			
				
			$inserir->execute();
			?
                session_destroy();	
 
	 return 0;



   header ('location:http://localhost/index.html');
return 0;