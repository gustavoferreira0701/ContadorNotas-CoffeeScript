class ContadorNotas

    range = [100, 50, 20, 10, 5, 2, 1]
    
    contar = (valor) ->
        resultado = []
        
        divisao = 0
        
        for nota in range            
            if nota > valor                 
                continue             
            
            obj = { 'nota': nota, 'quantidade': Math.floor valor/nota }

            resto = valor % nota
            
            if resto > 0                 
                opcoes = contar resto
                obj.opcoes = opcoes
            
            resultado.push obj
        
        return resultado
    