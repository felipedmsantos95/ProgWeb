function tabuada(n){
			document.write("<table border = 'l'>");
			document.write("<thead> <td colspan = '2'> Produtos de " + n+ "</td> </thead>");
			for(var i = 1; i <= 10; i++){
				str = n + " X " + i;
				val = i*n
				document.write("<tr><td>" + str + "</td><td>" + val +"</td></tr>");
			}
			document.write("</table>");
		}
		for(var i = 1; i <= 10; i++) tabuada(i);