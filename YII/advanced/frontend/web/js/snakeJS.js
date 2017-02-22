var closure = function(){

	var corpo = []; 
	var emjogo;
	var i;
	var j;
	var mov;
	var pontos;
	var perdeu = 0;
 
 	corpo.className = "cobra";

	function campo(lin,col){
				
				var body = document.getElementById("area");

				var table = document.createElement("table");
					table.setAttribute("id", "campo");				

				for(var i = 0; i < lin; i++)
				{
					var linha = document.createElement("tr");
						linha.setAttribute("id", "lin");		
					for(var j = 0; j < col; j++)
					{

						var coluna = document.createElement("td");
						coluna.setAttribute("id", "lin_" + i + "_col_" + j);
						linha.appendChild(coluna);		
						
					}
					 
					table.appendChild(linha);
					
								
				}
				
				body.appendChild(table);
				corpo[0] = "lin_" + 0 +"_col_" + 0;
				corpo[1] = "lin_" + 1 +"_col_" + 0;
				corpo[2] = "lin_" + 2 +"_col_" + 0;
				document.getElementById(corpo[0]).style.background = "green";
				document.getElementById(corpo[1]).style.background = "green";
				document.getElementById(corpo[2]).style.background = "green";


				
	}

	function aleatorio(range)
	{
		return Math.floor((Math.random() * range));

	}

	function fruta(lin, col)
	{

		var l;
		var c;

		l= aleatorio(lin);
		c = aleatorio(col);

		var lugar_fruta = "lin_" + l+"_col_" + c;

		while(document.getElementById(lugar_fruta).className == "cobra")//Garantir que a fruta não nasca no meio da cobra
		{
			l= aleatorio(lin);
			c = aleatorio(col);

			var lugar_fruta = "lin_" + l+"_col_" + c;
		}



		
		document.getElementById(lugar_fruta).style.background = "red";
		document.getElementById(lugar_fruta).className = "fruta";	
		
		
		

	}

	function mover_baixo(event){
				
				if(i == 19){
					window.alert("Você Perdeu! Sua pontuação: " + pontos);
					perdeu = 1;
					document.getElementById("pontos").value = pontos;
					document.getElementById("registrapontos").submit();				
					return;
				}

				var next_pos = "lin_" + (i + 1)+"_col_" + j;

				if(document.getElementById(next_pos).className == "fruta")
				{
					fruta(20,40);
					pontos += 10;
					document.getElementById("point").innerHTML = pontos;
					
				}
				else
				{
					var cauda = corpo.shift();

					document.getElementById(cauda).style.background = "white";
					document.getElementById(cauda).className = "";

				}


				if(document.getElementById(next_pos).className == "cobra")
				{
					window.alert("Você Perdeu! Sua pontuação: " + pontos);
					perdeu = 1;
					document.getElementById("pontos").value = pontos;
					document.getElementById("registrapontos").submit();				
					return;
				}

				document.getElementById(next_pos).style.background = "green";
				document.getElementById(next_pos).className = "cobra";
				corpo.push(next_pos);
				


				i++;
					
				

	}

	function mover_dir(event){
				
				if(j == 39){
					
					window.alert("Você Perdeu! Sua pontuação: " + pontos);
					perdeu = 1
					document.getElementById("pontos").value = pontos;
					document.getElementById("registrapontos").submit();	;		
					return;
				} 
				
				var next_pos = "lin_" + i+"_col_" + (j + 1);

				if(document.getElementById(next_pos).className == "fruta")
				{

					fruta(20,40);
					pontos += 10;
					document.getElementById("point").innerHTML = pontos;
				}
				else
				{
					var cauda = corpo.shift();

					document.getElementById(cauda).style.background = "white";
					document.getElementById(cauda).className = "";

				}


				if(document.getElementById(next_pos).className == "cobra")
				{
					window.alert("Você Perdeu! Sua pontuação: " + pontos);
					perdeu = 1;
					document.getElementById("pontos").value = pontos;
					document.getElementById("registrapontos").submit();				
					return;
				}

				document.getElementById(next_pos).style.background = "green";
				document.getElementById(next_pos).className = "cobra";
				corpo.push(next_pos);
				
				j++;				

	}

	function mover_esq(event){
				
				if(j == 0){
					window.alert("Você Perdeu! Sua pontuação: " + pontos);
					perdeu = 1;
					document.getElementById("pontos").value = pontos;
					document.getElementById("registrapontos").submit();				
					return;
				} 
				
				var next_pos = "lin_" + i+"_col_" + (j - 1);
				
				if(document.getElementById(next_pos).className == "fruta")
				{

					fruta(20, 40);

					pontos += 10;
					document.getElementById("point").innerHTML = pontos;
				}
				else
				{
					var cauda = corpo.shift();

					document.getElementById(cauda).style.background = "white";
					document.getElementById(cauda).className = "";

				}


				if(document.getElementById(next_pos).className == "cobra")
				{
					window.alert("Você Perdeu! Sua pontuação: " + pontos);
					perdeu = 1;
					document.getElementById("pontos").value = pontos;
					document.getElementById("registrapontos").submit();				
					return;
				}

				document.getElementById(next_pos).style.background = "green";
				document.getElementById(next_pos).className = "cobra";
				corpo.push(next_pos);
				j--;
								

	}

	function mover_cim(event){
				
				if(i == 0){
					window.alert("Você Perdeu! Sua pontuação: " + pontos);
					perdeu = 1;
					document.getElementById("pontos").value = pontos;
					document.getElementById("registrapontos").submit();			
					return;
				} 
				
				var next_pos = "lin_" + (i - 1)+"_col_" + j;

				if(document.getElementById(next_pos).className == "fruta")
				{

					fruta(20,40);
					pontos += 10;
					document.getElementById("point").innerHTML = pontos;
				}
				else
				{
					var cauda = corpo.shift();

					document.getElementById(cauda).style.background = "white";
					document.getElementById(cauda).className = "";

				}

				if(document.getElementById(next_pos).className == "cobra")
				{	
					window.alert("Você Perdeu! Sua pontuação: " + pontos);
					perdeu = 1;
					document.getElementById("pontos").value = pontos;
					document.getElementById("registrapontos").submit();			
					return;
				}

				document.getElementById(next_pos).style.background = "green";
				document.getElementById(next_pos).className = "cobra";
				corpo.push(next_pos);
				i--;
				
					
		

	}


	function muda_pos(event)
	{
	
		if(perdeu == 0)
		{
			if(event.keyCode == 40)
			{
				clearInterval(mov);
				mov = setInterval(mover_baixo, 100);
			}
			else if (event.keyCode == 39)
			{

				clearInterval(mov);
				mov = setInterval(mover_dir, 100);
			}
			else if (event.keyCode == 37)
			{

				clearInterval(mov);
				mov = setInterval(mover_esq, 100);
			}
			else if (event.keyCode == 38)
			{	

				clearInterval(mov);
				mov = setInterval(mover_cim, 100);
			}

		}
		


	}	

	

	


	
	return function(lin, col){
		i = 2; j = 0, k = 0; pontos = 0;
		campo(lin, col);
		addEventListener("keydown", muda_pos);
		
		document.getElementById("lin_" + 3+"_col_" + 4).style.background = "red";
		document.getElementById("lin_" + 3+"_col_" + 4).className = "fruta";
		



	}

}

var jogo = closure();

jogo(20,40);
