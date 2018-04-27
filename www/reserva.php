<?php
include_once("conexao.php");
reserva();
function reserva(){
		
		$sala = $_POST["sala"];	
		
        $local = $_POST["local"];
        $curso = $_POST["curso"];
        $periodo= $_POST["periodo"];
        $equipamento		

		try
		{
			$pdo = conectar();					
			
			$sql = "SELECT * FROM users WHERE user_email=?";
			
			$listar = $pdo->prepare($sql);					
			
			$listar->execute(array($email));
			
			$res = $listar->fetch(PDO::FETCH_ASSOC);
			
			$linha = $listar->rowCount();

			if($linha == 0)
			{
				$sucess = "0";
				
				echo $sucess;
				
				return 0;
			}
			
			elseif($res["user_ativado"] != 1)
			{
				$sucess = "1";
				echo $sucess;
				return 0;
			}

			else
			{
				
				
				if($senha == $res["user_password"])
				{
					session_start();
					
					$_SESSION["userId"] = $res["user_id"];
				
					$_SESSION["nomeUser"] = $res["user_name"];
					
					$_SESSION["emailUser"] = $res["user_email"];
				
					$_SESSION["logado"] = true;		
					
					$sucess = "11";	
				}
				
				else if ($senha == $res["user_password_temp"])
				{
					session_start();
					
					$_SESSION["userId"] = $res["user_id"];
				
					$_SESSION["nomeUser"] = $res["user_name"];
					
					$_SESSION["emailUser"] = $res["user_email"];
				
					$_SESSION["logado"] = true;	
					
					$sucess = "111";
				}
				
				else	
				{
					$sucess = "0";
				
					echo $sucess;
				
					return 0;
				}	
			}						
		
			echo $sucess;
		} 
		
		catch(PDOException $e)
		{
			$sucess = "0";
		
			echo $sucess;
			
			
		}						
		
		header("location:http://localhost/reserva.html");
			return 0;
	}

	
	?>